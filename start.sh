#!/bin/sh
docker-compose up -d --build
docker-compose exec web python manage.py migrate --noinput
docker-compose exec web python manage.py collectstatic --no-input --clear
