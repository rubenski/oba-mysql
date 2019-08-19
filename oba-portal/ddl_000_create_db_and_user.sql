DROP DATABASE IF EXISTS  obaportal;
CREATE DATABASE obaportal;
USE obaportal;
DROP USER IF EXISTS 'obaportal'@'%'; # Why on earth is this needed? How can docker retain my db and user?
CREATE USER 'obaportal'@'%' IDENTIFIED BY 'hello';
GRANT SELECT,INSERT,UPDATE,DELETE ON obaportal.* TO 'obaportal'@'%';
FLUSH PRIVILEGES

