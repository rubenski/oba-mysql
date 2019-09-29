USE oba;
DROP TABLE IF EXISTS oba.bank_api_onboarding;

CREATE TABLE application_bank_onboarding
(
    id                              binary(16) NOT NULL,
    application_id                  binary(16) NOT NULL,
    bank_api_id                     binary(16) NOT NULL,
    organization_signing_key_id     binary(16) NULL,
    organization_tls_certificate_id binary(16) NULL,
    secrets_enc                     text       NULL,
    enabled                         boolean    NOT NULL DEFAULT FALSE,
    FOREIGN KEY (bank_api_id) REFERENCES bank_api (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_signing_key_id) REFERENCES organization_private_key (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_tls_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (application_id, bank_api_id),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
