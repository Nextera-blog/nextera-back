from django.test import TestCase
from .models import Author, Article, Comment, Tag, ReactionType, ArticleReaction, CommentReaction, Role, UserRole
from django.utils import timezone

class BlogTestCase(TestCase):

    def setUp(self):
        # Création de données de test
        self.author = Author.objects.create(
            name='Jean Dupuis',
            bio='Rédacteur spécialisé en technologies et tendances numériques.',
            profile_picture_url='https://example.com/profiles/jean.jpg'
        )
        self.article = Article.objects.create(
            title='Les dernières tendances en IA',
            content='L\'intelligence artificielle continue de progresser...',
            author=self.author
        )
        self.comment = Comment.objects.create(
            content='Article très intéressant, merci pour l\'analyse.',
            author=self.author,
            article=self.article
        )
        self.tag = Tag.objects.create(name='Technologie')
        self.reaction_type = ReactionType.objects.create(emoji='👍', description='Like')

    def test_author_creation(self):
        """Test de la création d'un auteur"""
        author = Author.objects.get(name='Jean Dupuis')
        self.assertEqual(author.name, 'Jean Dupuis')
        self.assertTrue(author.bio)
        self.assertIsNotNone(author.join_date)

    def test_article_creation(self):
        """Test de la création d'un article"""
        article = Article.objects.get(title='Les dernières tendances en IA')
        self.assertEqual(article.title, 'Les dernières tendances en IA')
        self.assertEqual(article.author.name, 'Jean Dupuis')
        self.assertTrue(article.creation_date)

    def test_comment_creation(self):
        """Test de la création d'un commentaire sur un article"""
        comment = Comment.objects.get(content='Article très intéressant, merci pour l\'analyse.')
        self.assertEqual(comment.article.title, 'Les dernières tendances en IA')
        self.assertEqual(comment.author.name, 'Jean Dupuis')

    def test_tag_creation_and_association(self):
        """Test de la création de tags et de l'association avec les articles"""
        tag = Tag.objects.get(name='Technologie')
        article_tag = ArticleTag.objects.create(article=self.article, tag=tag)
        self.assertEqual(article_tag.article, self.article)
        self.assertEqual(article_tag.tag, tag)

    def test_reaction_on_article(self):
        """Test de l'ajout d'une réaction sur un article"""
        reaction = ArticleReaction.objects.create(
            user_id=1,
            article=self.article,
            reaction_type=self.reaction_type
        )
        self.assertEqual(reaction.reaction_type.description, 'Like')
        self.assertEqual(reaction.article.title, 'Les dernières tendances en IA')

    def test_reaction_on_comment(self):
        """Test de l'ajout d'une réaction sur un commentaire"""
        reaction = CommentReaction.objects.create(
            user_id=1,
            comment=self.comment,
            reaction_type=self.reaction_type
        )
        self.assertEqual(reaction.reaction_type.description, 'Like')
        self.assertEqual(reaction.comment.content, 'Article très intéressant, merci pour l\'analyse.')

    def test_role_assignment(self):
        """Test de l'attribution de rôles à un utilisateur"""
        role = Role.objects.create(role_name='Admin')
        user_role = UserRole.objects.create(user_id=1, role=role)
        self.assertEqual(user_role.role.role_name, 'Admin')
        self.assertEqual(user_role.user_id, 1)
