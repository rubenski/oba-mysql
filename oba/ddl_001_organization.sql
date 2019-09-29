USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE `organization`
(
    id      binary(16) NOT NULL,
    created datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
