USE oba;
DROP TABLE IF EXISTS oba.organization_private_key;

CREATE TABLE organization_certificate
(
    id                    binary(16)   NOT NULL,
    organization_id       binary(16)   NOT NULL,
    name                  varchar(50) NOT NULL,
    description           varchar(50) NULL,
    key_purpose           varchar(10)  NOT NULL,
    private_key_iv        text NOT NULL,
    private_key_encrypted text         NOT NULL,
    csr_distinguished_name      text        NOT NULL,
    certificate_distinguished_name      text        NOT NULL,
    csr                     text            NOT NULL,
    signed_certificate text NULL,
    created               datetime     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
