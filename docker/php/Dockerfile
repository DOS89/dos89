FROM php:7.1-fpm

RUN apt-get update \
    && echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list \
    && echo 'deb-src http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list \
    && apt-get install -y wget \
    && wget https://www.dotdeb.org/dotdeb.gpg \
    && apt-key add dotdeb.gpg \
    && apt-get update \
    && apt-get install -y \
        git \
        zlib1g-dev \
        mc \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
        php7.0-mysql

RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd
RUN docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer global require "fxp/composer-asset-plugin:^1.2.0"

COPY wait-for-it.sh /var/www/wait-for-it.sh
RUN chmod 0755 /var/www/wait-for-it.sh

COPY post-up.sh /var/www/post-up.sh
RUN chmod 0755 /var/www/post-up.sh
