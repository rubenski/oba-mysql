USE oba;
DROP TABLE IF EXISTS oba.bank;

CREATE TABLE `bank`
(
    id                 smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    created            datetime                         NOT NULL,
    name               varchar(36)                      NOT NULL,
    supported_services varchar(255)                     NOT NULL,
    maintenance_from   datetime                         NULL,
    maintenance_to     datetime                         NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
