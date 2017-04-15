#!/bin/bash

cd /var/www/source
composer install
./yii migrate --interactive=0
php-fpm
