USE oba;
DROP TABLE IF EXISTS oba.api_client_bank_security_properties;

CREATE TABLE application_bank_onboarding
(
    id                          smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    application_id              char(36)                         NOT NULL,
    bank_security_properties_id smallint UNSIGNED                NOT NULL,
    organisation_signing_key_id smallint UNSIGNED                NULL,
    customer_tls_certificate_id smallint UNSIGNED                NULL,
    secrets_enc                 text                             NULL,
    enabled                     boolean                          NOT NULL DEFAULT FALSE,
    FOREIGN KEY (bank_security_properties_id) REFERENCES bank_security_properties (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organisation_signing_key_id) REFERENCES organisation_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (customer_tls_certificate_id) REFERENCES organisation_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
