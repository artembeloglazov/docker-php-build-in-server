FROM php:7.3.1-cli
RUN docker-php-ext-install mysqli
COPY startup.sh /
ENTRYPOINT ["sh", "/startup.sh"]