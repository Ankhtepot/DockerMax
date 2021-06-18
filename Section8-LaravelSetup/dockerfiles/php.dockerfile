FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

COPY src .
#COPY src ./storage/logs
#COPY src ./storage/framework/sessions
#COPY src ./storage/framework/views
#COPY src ./storage/framework/cache

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html