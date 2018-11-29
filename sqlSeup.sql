UPDATE mysql.user SET Password = PASSWORD('password') WHERE User = 'root';
CREATE USER 'elgg_admin'@'localhost' IDENTIFIED BY 'seedubuntu';
GRANT ALL PRIVILEGES ON *.* TO 'elgg_admin'@'localhost' IDENTIFIED BY 'seedubuntu';
