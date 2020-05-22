USE oba;
DROP TABLE IF EXISTS oba.organization;

CREATE TABLE organization
(
    id            binary(16)   NOT NULL,
    name          varchar(100) NOT NULL,
    vat_number    varchar(100) NULL,
    street        varchar(100) NULL,
    street_number varchar(10)  NULL,
    postal_code   varchar(20)  NULL,
    country       varchar(100)  NULL,
    created       datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
