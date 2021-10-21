#!/bin/bash

echo "Remove installed files and stop services, redis and nginx are not uninstalled"
rm -r /var/www/backend
rm -r /var/www/USTC2021-frontend

systemctl stop nginx.service
systemctl stop gunicorn.service
systemctl stop celery.service
systemctl stop redis.service

rm /etc/nginx/sites-avaliable/cat /etc/nginx/sites-enabled/cat
rm /etc/systemd/system/gunicorn.service /etc/systemd/system/celery.service