FROM python:3.8-alpine

RUN set -ex \
    && apk add --no-cache \
      build-base \
      postgresql-dev \
      su-exec \
    && python -m venv /venv \
    && source /venv/bin/activate \
    && pip install -U pip setuptools
