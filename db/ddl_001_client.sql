USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE `client`
(
    id             varchar(36)  NOT NULL,
    name           varchar(30)  NOT NULL,
    email          varchar(100) NOT NULL,
    email_verified integer      NOT NULL DEFAULT 0,
    created        datetime     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
