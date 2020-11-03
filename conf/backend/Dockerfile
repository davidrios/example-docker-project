FROM python:3.8-alpine

RUN set -ex \
    && apk add --no-cache \
      build-base \
      postgresql-dev \
      su-exec \
    && python -m venv /venv \
    && source /venv/bin/activate \
    && pip install -U pip setuptools

COPY code/backend/requirements.txt /code/backend/

RUN set -ex \
    && source /venv/bin/activate \
    && pip install --no-binary psycopg2 -r /code/backend/requirements.txt

ENV \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=UTF-8

WORKDIR /code/backend