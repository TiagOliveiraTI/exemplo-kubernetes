FROM php:8.2-fpm-alpine3.17

RUN apk add --no-cache openssl bash --update linux-headers

RUN mkdir /app
WORKDIR /var/www
COPY /app /app