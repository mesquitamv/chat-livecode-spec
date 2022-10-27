#!/bin/bash

set -e
set -x

ROOT=$1

cd $1

BASE64_NGINX_SECRET_TEST=$(echo -n  $NGINX_SECRET_TEST | base64)

find -name "*.yml" -exec sed -in "s,PLACE_HOLDER_NGINX_SECRET_TEST,${BASE64_NGINX_SECRET_TEST},g" {} \;
