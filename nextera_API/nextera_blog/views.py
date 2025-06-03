# Django
from django.shortcuts import get_object_or_404, get_list_or_404
from django.utils import timezone
from django.core.validators import validate_email
from django.core.exceptions import ValidationError
# Auth
from django.contrib.auth import authenticate, get_user_model
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.permissions import AllowAny, IsAuthenticated

# API framework
from rest_framework.views import APIView
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response
from rest_framework.pagination import PageNumberPagination
from rest_framework import status
from rest_framework.exceptions import NotFound

# Models
from .models import Articles, Roles

# Serializers
from nextera_API.nextera_blog.serializers import *

# Django auth_user abstract class
User = get_user_model()


# User views

class CustomLoginView(APIView):
    # Set permission to any for users to be able to login
    permission_classes = [AllowAny]

    # Main login function (use email instead of username)
    def post(self, request):
        email = request.data.get("email")
        password = request.data.get("password")

        try:
            user = User.objects.get(email=email)
        except User.DoesNotExist:
            return Response({"error": "Utilisateur non trouvé"}, status=status.HTTP_404_NOT_FOUND)

        user = authenticate(username=user.username, password=password)
        if user is not None:
            refresh = RefreshToken.for_user(user)
            return Response({
                'refresh': str(refresh),
                'access': str(refresh.access_token),
            })
        return Response({"error": "Identifiants invalides"}, status=status.HTTP_401_UNAUTHORIZED)

@api_view(['POST'])
@permission_classes([AllowAny])
def register_user(request):
    try:
        visitor_role = Roles.objects.get(role_name='Visitor')
    except Roles.DoesNotExist:
        raise NotFound(detail="Un problème est survenu lors de la création du compte")
    
    # email check
    email = request.data.get('email');
    try:
        validate_email(email);
    except ValidationError:
        return Response({"error": "Email invalide"}, status=status.HTTP_400_BAD_REQUEST)
    
    already_existing_email = User.objects.filter(email=email).exists()

    if already_existing_email:
        return Response({"error": "Email indisponible"}, status=status.HTTP_400_BAD_REQUEST)
    
    serializer = UserSerializer(data=request.data)
    
    if serializer.is_valid():
        new_user = serializer.save()
        UsersRoles.objects.create(user=new_user, role=visitor_role)
        Authors.objects.create(user=new_user, name=new_user.username)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def update_user(request, id):

    # Check id is valid
    try:
        data_user_id = int(request.data.get("id"))
    except (TypeError, ValueError):
        return Response({"message": "ID invalide."}, status=400)

    # Check user exist in db
    try:
        target_user = User.objects.get(id=id)
    except User.DoesNotExist:
        raise NotFound(detail="Un problème est survenu lors de la modification du compte")

    # Check user identity match
    if target_user.id != request.user.id or data_user_id != request.user.id:
        return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)
    
    # email check
    email = request.data.get('email');
    try:
        validate_email(email);
    except ValidationError:
        return Response({"error": "Email invalide"}, status=status.HTTP_400_BAD_REQUEST)
    
    already_existing_email = User.objects.filter(email=email).exclude(id=data_user_id).exists()

    if already_existing_email:
        return Response({"error": "Email indisponible"}, status=status.HTTP_400_BAD_REQUEST)
    
    # Update account
    serializer = UpdateUserSerializer(instance = request.user, data= request.data)
    if serializer.is_valid():
        serializer.save()
        response_serializer = CurrentUserSerializer(request.user)
        return Response(response_serializer.data)
    else:
        return Response(serializer.errors, status=400)

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def current_user(request):
    serializer = CurrentUserSerializer(request.user)
    return Response(serializer.data)


#  Article views

@api_view(['GET'])
def articles_list(request):
    articles = Articles.objects.all().order_by('creation_date')
    paginator = PageNumberPagination()
    paginator.page_size = 10
    result_page = paginator.paginate_queryset(articles, request)
    serializer = ArticlesListSerializer(result_page, many=True)
    return paginator.get_paginated_response(serializer.data)

@api_view(['GET'])
def article_detail(request, id):
    article = get_object_or_404(Articles, article_id=id)
    serializer = ArticlesDetailSerializer(article, many=False, context={'request': request})
    return Response(serializer.data)

class CreateArticleView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request):
        # Permissions check
        user_role = request.user.user_role.role.role_name
        if (user_role != 'Author'):
            return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)

        data = request.data
        data['author'] = request.user.id
        data['creation_date'] = timezone.now()

        serializer = ArticlesWriteSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def article_update(request, id):
    # Get article instance to update or send error
    try:
        article = Articles.objects.get(article_id = id)
    except Articles.DoesNotExist:
        raise NotFound(detail="Un problème est survenu lors de la mise à jour de l'article")

    # Author role permissions check
    user_role = request.user.user_role.role.role_name
    if (user_role != 'Author'):
        return Response({"message": "Accès refusé. Droits insuffisants."}, status=403)
    
    # Check connected user is request article owner
    user_id = request.user.id
    author = request.data.get('author', {})
    author_id = int(author.get('user'))

    if author_id != user_id:
        return Response({"message": "Accès refusé. Droits d'écriture insuffisants."}, status=403)
    
    # Check database article and request article have the same author
    if author_id != article.author.user.id:
        return Response({"message": "Accès refusé. Les droits d'écriture sont insuffisants."}, status=403)
    
    serializer = ArticlesUpdateSerializer(instance = article, data = request.data)
    if serializer.is_valid():
        serializer.save()
        response_serializer = ArticlesDetailSerializer(article, many=False)
        return Response(response_serializer.data)
    else:
        return Response(serializer.errors, status=400)

@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def article_delete(request, id):
    try:
        article_id = int(id)
    except (TypeError, ValueError):
        return Response({"message": "Un problème est survenu"}, status=404)
    
    author = get_object_or_404(Authors, user = request.user)
    article = get_object_or_404(Articles, article_id= article_id, author = author)
    article.delete()
    
    return Response({"message": "Article supprimé avec succès"}, status=204)


# Authors

@api_view(['GET'])
def authors_list(request):
    authors = Authors.objects.all()
    serializer = BaseAuthorsSerializer(authors, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def author_detail(request, id):
    author = get_object_or_404(Authors, user = id)
    serializer = AuthorsDetailSerializer(author)
    return Response(serializer.data)

@api_view(['GET'])
def tags_list(request):
    tags = Tags.objects.all()
    serializer = BaseTagsSerializer(tags, many=True)
    return Response(serializer.data)

# Comments

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def comment_create(request):

    # Check id is valid
    try:
        data_user_id = int(request.data.get('user'))
    except (TypeError, ValueError):
        return Response({"message": "Identifiants invalides."}, status=400)
    # Is same user and user exists
    if (data_user_id != request.user.id):
        return Response({"message": "Un problème est survenu"}, status=400)

    data = request.data
    data['comment_id'] = None

    serializer = CommentsCreateSerializer(data=data)
    if serializer.is_valid():
        serializer.save()
        new_comment_id = serializer.data.get('comment_id')
        new_comment = Comments.objects.get(comment_id = new_comment_id)
        response_serializer = BaseCommentsSerializer(new_comment)
        return Response(response_serializer.data, status=status.HTTP_201_CREATED)

    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def comment_update(request, id):
    # Check user id is valid
    try:
        data_user_id = int(request.data.get('user'))
    except (TypeError, ValueError):
        return Response({"message": "Identifiants invalides."}, status=400)
    # Is same user and user exists
    if (data_user_id != request.user.id):
        return Response({"message": "Un problème est survenu"}, status=400)
    
     # Check comment id is valid
    try:
        data_comment_id = int(request.data.get('comment_id'))
    except (TypeError, ValueError):
        return Response({"message": "Identifiant invalide."}, status=400)
    # Is same user and user exists
    if (id != data_comment_id):
        return Response({"message": "Un problème est survenu"}, status=400)
    
    try:
        comment = Comments.objects.get(comment_id = id, user = request.user.id)
    except (TypeError, ValueError):
        return Response({"message": "Un problème est survenu"}, status=404)
    
    serializer = CommentsUpdateSerializer(instance = comment, data = request.data)

    if serializer.is_valid():
        serializer.save()
        updated_comment = Comments.objects.get(comment_id = id)
        response_serializer = CommentsChainSerializer(updated_comment)
        return Response(response_serializer.data, status=status.HTTP_200_OK)
    else:
        return Response(serializer.errors, status=400)
    
@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def comment_delete(request, id):
    try:
        comment_id = int(id)
    except (TypeError, ValueError):
        return Response({"message": "Un problème est survenu"}, status=404)
    
    author = get_object_or_404(Authors, user = request.user)
    comment = get_object_or_404(Comments, comment_id= comment_id, user = author)
    comment.delete()
    
    return Response({"message": "Commentaire supprimé avec succès"}, status=204)

    
# Reactions

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def article_reaction_manage(request, id):
    # Get ids
    try:
        user_id = int(request.data.get('user'))
        article_id = int(request.data.get('article'))
        reaction_id = int(request.data.get('reaction_type'))
    except (ValueError, TypeError):
        return Response({"error": "Cet valeur n'existe pas"}, status=status.HTTP_400_BAD_REQUEST)

    # Check is same user
    if user_id != request.user.id:
        return Response ({"message": "Accès refusé. Droits insuffisants."}, status=403)
    
    # Check is same article
    if article_id != id:
        return Response ({"message": "Un problème est survenu."}, status=400)

    # Check article exists
    if not Articles.objects.filter(article_id = article_id).exists():
        return Response ({"message": "Cet article n'existe pas"}, status=404)
    
    # Check reaction exists
    if not ReactionTypes.objects.filter(reaction_type_id = reaction_id).exists():
        return Response ({"message": "Cette reaction n'existe pas"}, status=404)
    
    # Check for operation (creata/update/delete)
    # If exact same, delete it
    if ArticleReactions.objects.filter(user = request.user, article = article_id, reaction_type = reaction_id).exists():
        reaction_to_delete = ArticleReactions.objects.get(user = request.user, article = article_id)
        reaction_to_delete.delete()
        return Response({'message': 'Réaction supprimée avec succès'}, status=200)
    else:
        # if exist, update
        try:
            reaction_to_update = ArticleReactions.objects.get(user=request.user, article=article_id)
            serializer = ArticleReactionsManageSerializer(instance=reaction_to_update, data=request.data)
        # if not create
        except ArticleReactions.DoesNotExist:
            serializer = ArticleReactionsManageSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def comment_reaction_manage(request, id):
    # Get ids
    try:
        user_id = int(request.data.get('user'))
        comment_id = int(request.data.get('comment'))
        reaction_id = int(request.data.get('reaction_type'))
    except (ValueError, TypeError):
        return Response({"error": "Cette valeur n'existe pas"}, status=status.HTTP_400_BAD_REQUEST)

    # Check is same user
    if user_id != request.user.id:
        return Response ({"message": "Accès refusé. Droits insuffisants."}, status=403)
    
    # Check is same article
    if comment_id != id:
        return Response ({"message": "Un problème est survenu."}, status=400)

    # Check article exists
    if not Comments.objects.filter(comment_id = comment_id).exists():
        return Response ({"message": "Cet article n'existe pas"}, status=404)
    
    # Check reaction exists
    if not ReactionTypes.objects.filter(reaction_type_id = reaction_id).exists():
        return Response ({"message": "Cette réaction n'existe pas"}, status=404)
    
    # Check for operation (creata/update/delete)
    # If exact same, delete it
    if CommentReactions.objects.filter(user = request.user, comment = comment_id, reaction_type = reaction_id).exists():
        reaction_to_delete = CommentReactions.objects.get(user = request.user, comment = comment_id)
        reaction_to_delete.delete()
        return Response({'message': 'Réaction supprimée avec succès'}, status=200)
    else:
        # if exist, update
        try:
            reaction_to_update = CommentReactions.objects.get(user=request.user, comment = comment_id)
            serializer = CommentReactionsManageSerializer(instance=reaction_to_update, data=request.data)
        # if not create
        except CommentReactions.DoesNotExist:
            serializer = CommentReactionsManageSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['PUT'])
def test(request):
    user = User.objects.get(id=1)
    serializer = UpdateUserSerializer(instance = user, data= request.data)
    if serializer.is_valid():
        serializer.save()
        response_serializer = CurrentUserSerializer(user)
        return Response(response_serializer.data)
    else:
        return Response(serializer.errors, status=400)