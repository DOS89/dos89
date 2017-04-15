FROM php:7.1-fpm

RUN apt-get update && apt-get install -y \
    git

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer global require "fxp/composer-asset-plugin:^1.2.0"
