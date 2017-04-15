FROM php:7.1-fpm

RUN apt-get update && apt-get install -y \
    git \
    zlib1g-dev \
    mc \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng12-dev

RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer global require "fxp/composer-asset-plugin:^1.2.0"
