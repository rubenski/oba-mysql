DROP DATABASE IF EXISTS oba;
CREATE DATABASE oba;
USE oba;
DROP USER IF EXISTS 'obaoba'@'%'; # Why on earth is this needed? How can docker retain my db and user?
CREATE USER 'obaoba'@'%' IDENTIFIED BY 'hello';
GRANT SELECT,INSERT,UPDATE,DELETE ON oba.* TO 'obaoba'@'%';
FLUSH PRIVILEGES