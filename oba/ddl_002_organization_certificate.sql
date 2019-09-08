USE oba;
DROP TABLE IF EXISTS oba.organisation_certificate;

CREATE TABLE organisation_certificate
(
    id                 smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    organization_id    char(36)                         NOT NULL,
    name               varchar(100)                     NOT NULL,
    type               varchar(10)                      NOT NULL,
    private_key_enc    text                             NOT NULL,
    csr                text                             NOT NULL,
    signed_certificate text                             NULL,
    created            datetime                         NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (organization_id, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
