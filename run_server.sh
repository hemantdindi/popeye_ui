#!/bin/bash
export PATH=$PATH:/app/lib/popeye
POPEYE_REPORT_DIR=/tmp/ /app/lib/popeye --save --out json --output-file popeye.json
python manage.py collectstatic --noinput --link
python manage.py runserver 0.0.0.0:8000