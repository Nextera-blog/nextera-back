# --- STAGE 1: Build Dependencies ---
FROM python:3.13-slim-bullseye AS builder

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        default-libmysqlclient-dev \
        build-essential \
        gcc \
        pkg-config \
        libffi-dev \
        libmariadb-dev \
        libmariadb3 \
        build-essential \
        locales \
        locales-all && \
    rm -rf /var/lib/apt/lists/* # Nettoyage pour réduire la taille de l'image

ENV LC_ALL="C.UTF-8" \
LANG="C.UTF-8"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# --- STAGE 2: Final Application Image ---
FROM python:3.13-slim-bullseye

RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser
USER appuser

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.13/site-packages /usr/local/lib/python3.13/site-packages

COPY . .

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

EXPOSE 8000

CMD ["gunicorn", "nextera_API.wsgi:application", "--bind", "0.0.0.0:8000"]