USE oba;
DROP TABLE IF EXISTS oba.api_registration;

CREATE TABLE api_registration
(
    id                                  binary(16) NOT NULL,
    organization_id                     binary(16) NOT NULL,
    api_id                              binary(16) NOT NULL,
    organization_signing_certificate_id binary(16) NULL,
    organization_tls_certificate_id     binary(16) NULL,
    secrets_enc_iv                      text       NOT NULL,
    secrets_enc                         text       NOT NULL,
    enabled                             boolean    NOT NULL DEFAULT FALSE,
    last_updated                        datetime   NOT NULL,
    created                             datetime   NOT NULL,
    FOREIGN KEY (api_id) REFERENCES api (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_signing_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_tls_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
