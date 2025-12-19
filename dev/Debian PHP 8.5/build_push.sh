#!/bin/sh

docker build -t elliotjreed/symfony-php-fpm-development-docker:fpm-debian-8.5 -t bunchesflorapost/symfony-base-development:fpm-debian-8.5 . \
&& docker push elliotjreed/symfony-php-fpm-development-docker:fpm-debian-8.5 \
&& docker push bunchesflorapost/symfony-base-development:fpm-debian-8.5
