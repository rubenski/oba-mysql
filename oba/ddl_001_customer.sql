USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE `customer`
(
    id      smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    name    varchar(30)                      NOT NULL,
    email   varchar(100)                     NOT NULL,
    created datetime                         NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
