FROM php:8.2-apache

RUN docker-php-ext-install curl

RUN a2enmod rewrite

COPY . /var/www/html/

EXPOSE 80
