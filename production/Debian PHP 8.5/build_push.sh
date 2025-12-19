#!/bin/sh

docker build -t elliotjreed/symfony-php-fpm-docker:fpm-debian-8.5 -t bunchesflorapost/symfony-base:fpm-debian-8.5 . \
&& docker push elliotjreed/symfony-php-fpm-docker:fpm-debian-8.5 \
&& docker push bunchesflorapost/symfony-base:fpm-debian-8.5
