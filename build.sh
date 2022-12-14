#!/usr/bin/env bash
# exit on error
set -o errexit

poetry install

python manage.py collectstatic --no-input
python manage.py loaddata db.json
rm db.json
python manage.py migrate
