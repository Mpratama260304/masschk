FROM php:8.2-apache

RUN a2enmod rewrite

# Increase PHP limits for large card lists
RUN echo 'post_max_size = 64M' > /usr/local/etc/php/conf.d/uploads.ini && \
    echo 'upload_max_filesize = 64M' >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo 'max_input_vars = 10000' >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo 'max_execution_time = 300' >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo 'memory_limit = 256M' >> /usr/local/etc/php/conf.d/uploads.ini

COPY . /var/www/html/

EXPOSE 80
