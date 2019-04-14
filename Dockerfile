FROM php:alpine

# Install composer and prestissimo
RUN curl -s http://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer && \
    composer global require hirak/prestissimo

WORKDIR /app

ENTRYPOINT [ "composer" ]