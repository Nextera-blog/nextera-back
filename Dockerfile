# --- STAGE 1: Build Dependencies ---
# Utilise une image Python avec des outils de build pour mysqlclient
# La version "buster" contient les outils nécessaires pour les dépendances système.
FROM python:3.13.3-slim-buster AS builder

# Installe les dépendances système nécessaires pour mysqlclient et autres outils de build.
# --no-install-recommends pour réduire la taille de l'image.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        default-libmysqlclient-dev \
        build-essential \
        gcc \
    && rm -rf /var/lib/apt/lists/* # Nettoyage pour réduire la taille de l'image

# Définit le répertoire de travail dans le conteneur pour ce stage.
WORKDIR /app

# Copie le fichier requirements.txt et installe les dépendances Python.
# Cette étape est placée tôt pour tirer parti du cache de Docker.
# Si requirements.txt ne change pas, cette étape ne sera pas reconstruite.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# --- STAGE 2: Final Application Image ---
# Utilise une image Python plus petite et plus propre pour l'exécution finale.
FROM python:3.13.3-slim-buster

# Crée un utilisateur non-root pour des raisons de sécurité.
# C'est une bonne pratique de ne pas faire tourner l'application en tant que root.
RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser
USER appuser

# Définit le répertoire de travail pour l'application.
WORKDIR /app

# Copie les dépendances installées du stage 'builder' vers l'image finale.
COPY --from=builder /usr/local/lib/python3.13/site-packages /usr/local/lib/python3.13/site-packages
# Si Gunicorn est installé, copiez aussi son exécutable. Vérifiez votre requirements.txt.
# COPY --from=builder /usr/local/bin/gunicorn /usr/local/bin/gunicorn

# Copie tout le reste du code de l'application Django.
# Le fichier .dockerignore (ci-dessous) exclura les fichiers et dossiers inutiles.
COPY . .

# Définit des variables d'environnement Python pour une meilleure gestion des logs et performance.
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Expose le port par défaut de Django.
EXPOSE 8000

# Commande par défaut pour démarrer l'application.
# Pour la production, on utilise Gunicorn. Pour le développement, docker-compose.dev.yml la surchargera.
# Assurez-vous que Gunicorn est bien dans votre requirements.txt, sinon utilisez 'python manage.py runserver'.
CMD ["gunicorn", "nextera_API.wsgi:application", "--bind", "0.0.0.0:8000"]

# Si vous n'avez pas gunicorn ou que vous voulez utiliser le serveur dev de Django pour la démo:
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]