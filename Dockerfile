FROM php:alpine

RUN apk add --update \
    imap-dev \
    && docker-php-ext-install mbstring iconv imap

# Install composer and prestissimo
RUN curl -s http://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer global require hirak/prestissimo

WORKDIR /app

ENTRYPOINT [ "composer" ]