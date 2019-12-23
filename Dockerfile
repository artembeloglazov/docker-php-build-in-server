FROM php:7.3.1-cli
RUN docker-php-ext-install mysqli
RUN mkdir -p /var/www
COPY index.php /var/www/
VOLUME /var/www
EXPOSE 80
ENTRYPOINT ["php", "-S", "0.0.0.0:80", "-t", "/var/www"]