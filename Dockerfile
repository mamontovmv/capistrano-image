FROM alpine:3.14.1

WORKDIR "/var/www/html"

RUN apk add --no-cache --virtual .build-deps \
    ruby-dev \
    make \
    gcc \
    musl-dev \
    && apk add --no-cache \
    ruby \
    ruby-bundler \
    rsync \
    openssh \
    && gem install capistrano:3.10.0 \
    capistrano-composer \
    capistrano-file-permissions \
    capistrano-scm-rsync \
    capistrano-symfony:0.4.0 \
    capistrano-laravel:1.2.1 \
    json \
    && apk del --no-cache .build-deps

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]