USE oba;
DROP TABLE IF EXISTS oba.organization;

CREATE TABLE `organization`
(
    id      binary(16)   NOT NULL,
    name    varchar(100) NOT NULL,
    created datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
