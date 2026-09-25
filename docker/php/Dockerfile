FROM php:8.3-apache

# Extension PDO MySQL + mod_rewrite
RUN docker-php-ext-install pdo_mysql \
 && a2enmod rewrite

# Le DocumentRoot pointe sur /public : src/ et templates/ ne sont pas accessibles depuis le navigateur
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
 && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf \
 && echo "ServerName localhost" > /etc/apache2/conf-available/servername.conf \
 && a2enconf servername

# Configuration PHP de développement (affichage des erreurs)
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
