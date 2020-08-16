FROM debian:buster
RUN apt-get update && apt-get upgrade && apt-get install -y nginx
RUN apt-get install wget -y
RUN apt-get install php7.3-fpm php7.3-mysql -y
RUN apt-get install openssl -y
RUN apt-get install mariadb-server -y
RUN mkdir /var/www/site
COPY srcs/nginx_conf /etc/nginx/sites-available/site
COPY srcs/info.php /var/www/site
RUN ln -s /etc/nginx/sites-available/site /etc/nginx/sites-enabled/site
RUN rm -rf /etc/nginx/sites-enabled/default
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/site.pem -keyout /etc/nginx/ssl/site.key -subj "/C=FR/ST=75/L=Paris/O=42/OU=jfoucher/CN=site"
COPY srcs/start.sh .
COPY srcs/test.php var/www/site
CMD bash start.sh 
