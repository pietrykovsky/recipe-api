#!/bin/sh

set -e

envsubst < /etc/nginx/defalut.conf.tpl > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'