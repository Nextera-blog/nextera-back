from django.test import TestCase
from django.utils import timezone
from .models import Article, Commentaire, Tag, ReactionArticle, ReactionCommentaire, TypeReaction, User  # a adapter 
from django.contrib.auth import get_user_model

User = get_user_model()

class BlogFunctionalTests(TestCase):
    def setUp(self):
        # Créer des utilisateurs
        self.user1 = User.objects.create_user(username='alice', email='alice@example.com', password='pass')
        self.user2 = User.objects.create_user(username='bob', email='bob@example.com', password='pass')

        # Créer des types de réactions
        self.like = TypeReaction.objects.create(emoji='👍', description='Like')
        self.love = TypeReaction.objects.create(emoji='❤️', description='Love')

        # Créer des tags
        self.tag_seo = Tag.objects.create(nom='SEO')
        self.tag_conseils = Tag.objects.create(nom='conseils')

        # Créer un article
        self.article = Article.objects.create(
            titre='Test SEO', contenu='Contenu test', autor=self.user1
        )
        self.article.tags.add(self.tag_seo, self.tag_conseils)

        # Créer un commentaire
        self.comment = Commentaire.objects.create(
            contenu='Super article', autor=self.user2, article=self.article
        )

        # Réactions
        ReactionArticle.objects.create(user=self.user2, article=self.article, type_reaction=self.like)
        ReactionCommentaire.objects.create(user=self.user1, commentaire=self.comment, type_reaction=self.love)

    def test_article_creation(self):
        self.assertEqual(Article.objects.count(), 1)
        self.assertEqual(self.article.titre, 'Test SEO')
        self.assertEqual(self.article.autor, self.user1)

    def test_tags_association(self):
        self.assertEqual(self.article.tags.count(), 2)
        self.assertIn(self.tag_seo, self.article.tags.all())

    def test_comment_association(self):
        self.assertEqual(self.article.commentaire_set.count(), 1)
        self.assertEqual(self.comment.contenu, 'Super article')

    def test_reaction_article(self):
        reactions = ReactionArticle.objects.filter(article=self.article)
        self.assertEqual(reactions.count(), 1)
        self.assertEqual(reactions[0].type_reaction.emoji, '👍')

    def test_reaction_commentaire(self):
        reactions = ReactionCommentaire.objects.filter(commentaire=self.comment)
        self.assertEqual(reactions.count(), 1)
        self.assertEqual(reactions[0].type_reaction.emoji, '❤️')
