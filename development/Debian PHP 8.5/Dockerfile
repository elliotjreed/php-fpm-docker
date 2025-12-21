FROM bunchesflorapost/symfony-base:fpm-debian-8.5

ENV XDEBUG_VERSION="3.5.0"

ENV TZ='Europe/London'

LABEL Description="PHP FPM Docker image with OPCache, APCu, Intl., PDO MySQL, MBString, and Yaml extensions, with XDebug. Used for development or building Symfony / Laravel applications." Vendor="Elliot J. Reed" Version="3.0"

USER root

COPY ./php-ini-overrides.ini /usr/local/etc/php/conf.d/99-overrides.ini

RUN apt-get update && apt-get install -y --no-install-recommends \
    $PHPIZE_DEPS \
    && pecl install xdebug-${XDEBUG_VERSION} \
    && docker-php-ext-enable xdebug \
    && pecl clear-cache \
    && docker-php-source delete \
    && { find /usr/local/lib -type f -print0 | xargs -0r strip --strip-all -p 2>/dev/null || true; } \
    && apt-get purge -y --auto-remove $PHPIZE_DEPS \
    && rm -rf /tmp/* /usr/local/lib/php/doc/* /var/lib/apt/lists/*

USER www-data

EXPOSE 9000
EXPOSE 9003
