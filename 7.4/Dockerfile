FROM php:7.4-alpine

SHELL [ "/bin/ash", "-eo", "pipefail", "-c" ]

RUN apk add --no-cache --virtual .build-deps \
    imap-dev \
    && docker-php-ext-install imap \
    && apk del .build-deps

# Install composer and prestissimo
RUN curl -s http://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer global require hirak/prestissimo

WORKDIR /app

ENTRYPOINT [ "composer" ]

CMD [ "--help" ]
