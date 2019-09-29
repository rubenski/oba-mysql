USE oba;
DROP TABLE IF EXISTS oba.organization_certificate;

CREATE TABLE organization_certificate
(
    id                          binary(16)   NOT NULL,
    organization_private_key_id binary(16)   NOT NULL,
    name                        varchar(100) NOT NULL,
    description                 varchar(255) NULL,
    distinguished_name          varchar(255) NOT NULL,
    csr                         text         NOT NULL,
    signed_certificate          text         NULL,
    expiration_date             datetime     NOT NULL,
    created                     datetime     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (organization_private_key_id) REFERENCES organization_private_key (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (organization_private_key_id, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
