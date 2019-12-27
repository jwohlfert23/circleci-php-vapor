FROM circleci/php:7.2-node-browsers

LABEL maintainer="Jack Wohlfert <jack.wohlfert@gmail.com>"

RUN sudo apt-get install libpng-dev libxml2-dev
RUN sudo -E docker-php-ext-install -j$(nproc) gd bcmath pcntl soap
RUN composer global require laravel/vapor-cli
RUN sudo ln -s ~/.composer/vendor/bin/vapor /usr/bin/vapor
