USE oba;
DROP TABLE IF EXISTS oba.bank_registration;

CREATE TABLE bank_registration
(
    id                                  binary(16) NOT NULL,
    organization_id                     binary(16) NOT NULL,
    bank_api_id                         binary(16) NOT NULL,
    organization_signing_certificate_id binary(16) NULL,
    organization_tls_certificate_id     binary(16) NULL,
    secrets_enc                         text       NULL,
    enabled                             boolean    NOT NULL DEFAULT FALSE,
    FOREIGN KEY (bank_api_id) REFERENCES bank_api (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_signing_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_tls_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (organization_id, bank_api_id),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
