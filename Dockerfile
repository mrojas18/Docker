
FROM php:7.3-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql


#Instalo composer
RUN set -eux; \
	cd /tmp; \
	curl -sS https://getcomposer.org/installer | php; \
	mv composer.phar /usr/local/bin/composer

LABEL description = "apache-php7.3 con composer y mysql pdo "