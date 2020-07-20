USE oba;
DROP TABLE IF EXISTS oba.product;

CREATE TABLE product
(
    name varchar(30),
    PRIMARY KEY (name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
