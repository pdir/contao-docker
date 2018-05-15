FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

RUN apt-get update
RUN apt-get install -y curl zip unzip
RUN apt-get install -y nginx
RUN apt-get install -y php php-dom php-gd php-curl php-intl php-mbstring php-mysql
RUN apt-get install -y php-fpm
RUN apt-get install -y supervisor

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN rm -rf /var/www/html/ && composer create-project contao/managed-edition /var/www/html/ '4.4.*'

# Add plugins
# TODO: Add plugins

# Save database credentials
sed -i -e 's/database_host: localhost/database_host: mysql/g' /var/www/html/app/config/parameters.yml
sed -i -e 's/database_user: null/database_user: root/g' /var/www/html/app/config/parameters.yml
sed -i -e 's/database_password: null/database_password: mypass/g' /var/www/html/app/config/parameters.yml
sed -i -e 's/database_name: null/database_name: contao/g' /var/www/html/app/config/parameters.yml

# Clear symfony cache
RUN php /var/www/html/bin/console cache:clear --env=prod
RUN php /var/www/html/bin/console cache:clear --env=dev

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
