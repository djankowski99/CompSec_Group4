UPDATE mysql.user SET Password = PASSWORD('password') WHERE User = 'root';
CREATE USER 'elgg_admin'@'localhost' IDENTIFIED BY 'seedubuntu';
