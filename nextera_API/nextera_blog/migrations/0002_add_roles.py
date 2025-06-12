# Add roles to nextera database

from django.db import migrations

# Define roles base values
def insert_roles(apps, schema_editor):
    Role = apps.get_model('nextera_blog', 'Roles')

    roles = [
        {'role_id': 1, 'role_name': 'Admin'},
        {'role_id': 2, 'role_name': 'Author'},
        {'role_id': 3, 'role_name': 'Visitor'},
    ]

    for role_data in roles:
        Role.objects.update_or_create(role_id=role_data['role_id'], defaults={'role_name': role_data['role_name']})

# Migrate
class Migration(migrations.Migration):

    dependencies = [
        ('nextera_blog', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(insert_roles),
    ]
