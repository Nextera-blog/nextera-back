import re
from django.core.exceptions import ValidationError
from django.utils.translation import gettext as _

class CustomPasswordValidator:
    def validate(self, password, user=None):
        if len(password) < 8:
            raise ValidationError(_('Le mot de passe doit contenir au moins 8 caractères.'))

        if not re.search(r'[A-Z]', password):
            raise ValidationError(_('Le mot de passe doit contenir au moins une lettre majuscule.'))

        if not re.search(r'[a-z]', password):
            raise ValidationError(_('Le mot de passe doit contenir au moins une lettre minuscule.'))

        if not re.search(r'\d', password):
            raise ValidationError(_('Le mot de passe doit contenir au moins un chiffre.'))

        if not re.search(r'[^\w]', password):  # caractères spéciaux
            raise ValidationError(_('Le mot de passe doit contenir au moins un caractère spécial.'))

    def get_help_text(self):
        return _(
            'Votre mot de passe doit contenir au moins 8 caractères, '
            'une majuscule, une minuscule, un chiffre et un caractère spécial.'
        )
