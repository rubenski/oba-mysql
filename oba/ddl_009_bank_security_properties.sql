USE oba;
DROP TABLE IF EXISTS oba.bank_security_properties;

CREATE TABLE bank_security_properties
(
    id                                    smallint UNSIGNED      NOT NULL,
    bank_id                               smallint UNSIGNED NOT NULL,
    environment                           varchar(10)       NOT NULL,
    version                               smallint          NOT NULL,
    secrets_definition                    text              NOT NULL,
    request_signing_used                  boolean           NOT NULL,
    request_signing_algorithm             varchar(20)       NOT NULL,
    mutual_tls_used                       boolean           NOT NULL,
    authentication_means_per_redirect_url boolean           NOT NULL,
    FOREIGN KEY (bank_id) REFERENCES bank (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (bank_id, version),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
