#!/bin/sh
set -eu

docker-compose exec -u postgres postgres-db createdb -T template0 -E utf8 backend
docker-compose exec -u user backend /bin/sh -c '. /venv/bin/activate && python manage.py migrate'
docker-compose exec -u user backend touch /code/backend/manage.py
docker-compose exec -u user backend /bin/sh -c '. /venv/bin/activate && python manage.py createsuperuser'

echo 'All done!'