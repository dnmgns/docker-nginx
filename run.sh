#!/bin/bash
sed -i "s/%fpm-ip%/${PHP_PORT:6}/" /etc/nginx/nginx.conf
sed -i "s/%vhost%/$VHOST/" /etc/nginx/nginx.conf

exec "$@"