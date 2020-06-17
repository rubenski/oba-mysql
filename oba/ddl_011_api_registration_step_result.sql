USE oba;
DROP TABLE IF EXISTS oba.api_registration_step_result;

CREATE TABLE api_registration_step_result
(
    id                                  binary(16) NOT NULL,
    organization_id                     binary(16) NOT NULL,
    api_id                              binary(16) NOT NULL,
    step_nr                             tinyint    NOT NULL,
    organization_signing_certificate_id binary(16) NULL,
    organization_tls_certificate_id     binary(16) NULL,
    field_values                        text       NULL,
    success                             boolean    NOT NULL,
    created                             datetime   NOT NULL,
    FOREIGN KEY (organization_signing_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_tls_certificate_id) REFERENCES organization_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
