DROP DATABASE IF EXISTS obademo;
CREATE DATABASE obademo;
USE obademo;
DROP USER IF EXISTS 'obademo'@'%'; # Why on earth is this needed? How does docker retain my db and user?
CREATE USER 'obademo'@'%' IDENTIFIED BY 'oiwdjoiqwjd';
GRANT SELECT,INSERT,UPDATE,DELETE ON obademo.* TO 'obademo'@'%';
FLUSH PRIVILEGES
