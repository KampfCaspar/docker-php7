FROM php:7-apache
MAINTAINER hp@oeri.ch

ENV	APACHE_RUN_USER=1000 APACHE_RUN_GROUP=1000

RUN	a2enmod rewrite && pecl install xdebug-beta
ADD	xdebug.ini /usr/local/etc/php/conf.d/

EXPOSE  80
VOLUME  [ "/var/www", "/var/log/apache2", "/etc/apache2" ]
