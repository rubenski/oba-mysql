USE oba;
DROP TABLE IF EXISTS oba.api_registration_step;

CREATE TABLE api_registration_step
(
    id                                  binary(16) NOT NULL,
    organization_id                     binary(16) NOT NULL,
    api_id                              binary(16) NOT NULL,
    step_nr                             tinyint    NOT NULL,
    organization_signing_certificate_id binary(16) NULL,
    organization_tls_certificate_id     binary(16) NULL,
    fields_enc_iv                       text       NOT NULL,
    fields_enc                          text       NOT NULL,
    created                             datetime   NOT NULL,
    FOREIGN KEY (organization_signing_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_tls_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (organization_id, api_id, step_nr),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
