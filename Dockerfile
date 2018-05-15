FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

RUN apt-get update
RUN apt-get install -y curl zip unzip
RUN apt-get install -y nginx
RUN apt-get install -y php php-dom php-gd php-curl php-intl php-mbstring php-mysql
RUN apt-get install -y php-fpm
RUN apt-get install -y supervisor
RUN apt-get install -y mysql-client

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN rm -rf /var/www/html/ && composer create-project contao/managed-edition /var/www/html/ '4.4.*'

# Copy comolo default stuff
COPY contao_default/app/config/parameters.yml /var/www/html/app/config/parameters.yml
COPY contao_default/files /var/www/html/files
COPY contao_default/templates /var/www/html/templates

# Add plugins
RUN cd /var/www/html; composer require comolo/contao-supertheme
RUN cd /var/www/html; composer require superlogin/contao-client "3.2.5"
RUN cd /var/www/html; composer require comolo/contao-pageimage

# Import sql dump
RUN mysql -u root -pmypass contao < /var/www/html/templates/default.sql; exit 0

# Fix permissions
RUN chown -R www-data:www-data /var/www/html

# Supervisor
RUN mkdir -p /var/log/supervisor /run/php
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/sites-enabled/default

EXPOSE 80
WORKDIR /var/www/html
HEALTHCHECK CMD curl --fail http://localhost/ || exit 1

CMD ["/usr/bin/supervisord", "-n"]
