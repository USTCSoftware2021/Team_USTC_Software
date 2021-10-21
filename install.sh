#!/bin/bash

echo "This script is organized according to memory, and is intended to work on debian 10."

echo "1. Make sure server and database installed"
! command -v redis-server &> /dev/null && apt install redis
! command -v nginx &> /dev/null && apt install nginx

echo "2. Copy folder into /var/www"

if [ ! -d /var/www/backend ]; then
    cp -r ./backend /var/www
fi
if [ ! -d /var/www/USTC2021-frontend ]; then
    cp -r ./USTC2021-frontend /var/www
fi

echo "3. Deploy backend."
cd /var/www/backend
bash setup.sh
