service mysql start
mysql -u root -e "CREATE DATABASE wordpress;"
mysql wordpress -e "CREATE USER 'jfoucher'@'localhost' IDENTIFIED BY 'password';"
mysql -u root  -e "GRANT ALL ON wordpress.* TO 'jfoucher'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "CREATE TABLE wordpress.todo_list (
    item_id INT AUTO_INCREMENT,
    content VARCHAR(255),
    PRIMARY KEY(item_id)
);"
mysql -u root -e "INSERT INTO wordpress.todo_list (content) VALUES (\"My first important item\");"
mysql -u root -e "SELECT * FROM wordpress.todo_list;"
service php7.3-fpm start
nginx -g 'daemon off;'
