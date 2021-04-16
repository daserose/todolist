FROM php:5-apache

RUN pear channel-discover pear.nrk.io
RUN pear install nrk/Predis

RUN sed -i 's#ErrorLog /proc/self/fd/2#ErrorLog "|$/bin/cat 1>\&2"#' /etc/apache2/apache2.conf
RUN sed -i 's#CustomLog /proc/self/fd/1 combined#CustomLog "|/bin/cat" combined#' /etc/apache2/apache2.conf

ADD app/todolist.php /var/www/html/todolist.php
ADD app/controllers.js /var/www/html/controllers.js
ADD app/index.html /var/www/html/index.html
