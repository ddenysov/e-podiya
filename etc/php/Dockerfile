# syntax = docker/dockerfile:1.0-experimental

FROM php:8.1.4-fpm-alpine3.15

ARG DA_DEBUG

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.3.1 \
    && docker-php-ext-install bcmath \
    && apk add --no-cache $PHPIZE_DEPS && pecl install xdebug-3.1.3 \
    && docker-php-ext-enable xdebug

RUN apk add --no-cache bash
