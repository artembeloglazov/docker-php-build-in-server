FROM php:7.3.1-cli
RUN docker-php-ext-install mysqli
RUN mkdir -p /var/www
COPY index.php /var/www/
VOLUME /var/www
COPY startup.sh /
EXPOSE 80
ENTRYPOINT ["sh", "/startup.sh"]