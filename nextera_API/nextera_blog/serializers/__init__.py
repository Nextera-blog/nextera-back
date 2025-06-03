from .base_serializers import *
<<<<<<< HEAD
from .users_serializers import UserSerializer, CurrentUserSerializer
from .articles_serializers import ArticlesListSerializer, ArticlesDetailSerializer, ArticlesWriteSerializer, ArticlesMinimalSerializer, ArticlesUpdateSerializer
from .authors_serializers import AuthorsDetailSerializer
=======
from .users_serializers import UserSerializer, CurrentUserSerializer, UpdateUserSerializer
from .articles_serializers import ArticlesListSerializer, ArticlesDetailSerializer, ArticlesWriteSerializer, ArticlesMinimalSerializer
from .authors_serializers import AuthorsDetailSerializer, AuthorsUpdateSerializer
>>>>>>> develop
from .comments_serializers import CommentsChainSerializer, CommentsCreateSerializer, CommentsUpdateSerializer
from .reaction_types_serializers import ReactionsArticleSerializer, ReactionsCommentSerializer
from .article_reactions_serializers import ArticleReactionsManageSerializer
from .comment_reactions_serializers import CommentReactionsManageSerializer