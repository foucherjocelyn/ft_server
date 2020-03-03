FROM debian:buster
RUN apt-get update && apt-get upgrade && apt-get install -y nginx
RUN service nginx restart
RUN apt-get install openssl
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes -out /etc/nginx/sll/site.crt -keyout /etc/nginx/sll/site.key -subj "/C=FR/ST=75/L=Paris/O=42/CN=jfoucher"
