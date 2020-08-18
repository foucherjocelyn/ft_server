service mysql start
mysql < /usr/share/phpmyadmin/sql/create_tables.sql -u root -p
mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'jfoucher'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
service php7.3-fpm start
mysql -u root -e "CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'jfoucher'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;"
nginx -g 'daemon off;'
bash
