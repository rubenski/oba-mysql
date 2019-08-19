USE oba;
DROP TABLE IF EXISTS oba.api_client_bank_security_properties;

CREATE TABLE `api_client_bank_security_properties`
(
    id                          smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    api_client_id               smallint UNSIGNED                NOT NULL,
    bank_security_properties_id smallint UNSIGNED                NOT NULL,
    customer_signing_key_id     smallint UNSIGNED                NULL,
    customer_tls_certificate_id smallint UNSIGNED                NULL,
    secrets_enc                 text                             NULL,
    FOREIGN KEY (bank_security_properties_id) REFERENCES bank_security_properties (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (customer_signing_key_id) REFERENCES customer_signing_key (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (customer_tls_certificate_id) REFERENCES customer_tls_certificate (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (api_client_id) REFERENCES api_client (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
