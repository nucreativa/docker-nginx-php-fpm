FROM richarvey/nginx-php-fpm:stable
RUN apt-get update
RUN apt-get install nano curl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ && mv /usr/bin/composer.phar /usr/bin/composer
RUN composer global require "fxp/composer-asset-plugin:~1.0.3"
RUN composer global require "laravel/lumen-installer=~1.1"
RUN export PATH=$PATH:~/.composer/vendor/bin

ENV TERM xterm