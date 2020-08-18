FROM debian:buster
RUN apt-get update && apt-get upgrade && apt-get install -y nginx
RUN apt-get install wget -y
RUN apt-get install php7.3-fpm php7.3-mysql -y
RUN apt-get install php-mbstring php-zip php-gd -y php-json
RUN apt-get install openssl -y
RUN apt-get install mariadb-server -y
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar xvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages/ /usr/share/phpmyadmin
RUN mkdir -p /var/lib/phpmyadmin/tmp
RUN chown -R www-data:www-data /var/lib/phpmyadmin
COPY srcs/config.inc.php /usr/share/phpmyadmin/config.inc.php
RUN mkdir /var/www/site
COPY srcs/nginx_conf /etc/nginx/sites-available/site
COPY srcs/info.php /var/www/site
RUN ln -s /etc/nginx/sites-available/site /etc/nginx/sites-enabled/site
RUN rm -rf /etc/nginx/sites-enabled/default
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/site.pem -keyout /etc/nginx/ssl/site.key -subj "/C=FR/ST=75/L=Paris/O=42/OU=jfoucher/CN=site"
RUN wget -c https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN mv wordpress/ /var/www/site
COPY srcs/wp-config.php /var/www/site/wordpress/
COPY srcs/start.sh .
COPY srcs/test.php var/www/site
CMD bash start.sh 
