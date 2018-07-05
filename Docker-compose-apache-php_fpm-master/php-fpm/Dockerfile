# Serveur apache
FROM php:fpm
MAINTAINER Arnaud POINTET <arnaud.pointet@gmail.com>

RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev g++ libmcrypt-dev 
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

RUN apt-get update \
    &&  docker-php-ext-install mbstring pdo_mysql mysqli pdo  pdo_mysql 
   
ADD conf/www.conf /etc/php5/fpm/pool.d/www.conf
ADD conf/30-custom.ini /usr/local/etc/php/conf.d/30-custom.ini

RUN apt-get update

ENTRYPOINT php-fpm --nodaemonize

VOLUME /var/www

WORKDIR /var/www
