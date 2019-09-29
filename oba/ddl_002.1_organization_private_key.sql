USE oba;
DROP TABLE IF EXISTS oba.organization_private_key;

CREATE TABLE organization_private_key
(
    id                    binary(16)   NOT NULL,
    organization_id       binary(16)   NOT NULL,
    name                  varchar(100) NOT NULL,
    description           varchar(255) NULL,
    key_purpose           varchar(10)  NOT NULL,
    private_key_encrypted text         NOT NULL,
    created               datetime     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (organization_id, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
