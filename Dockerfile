# https://prototype.php.net/versions/5.6/install/docker
FROM php:5.6-fpm-alpine
MAINTAINER Péter Bakonyi-Kárpáti <paha77@gmail.com>

RUN docker-php-ext-install -j$(nproc) mysqli opcache

ADD php.ini /usr/local/etc/php.ini
