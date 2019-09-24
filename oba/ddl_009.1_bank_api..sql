USE oba;
DROP TABLE IF EXISTS oba.bank_api;

CREATE TABLE bank_api
(
    id                        char(36)     NOT NULL,
    bank_id                   char(36)     NOT NULL,
    base_url                  varchar(255) NOT NULL,
    secrets_definition        text         NOT NULL,
    request_signing_used      boolean      NOT NULL,
    request_signing_algorithm varchar(20)  NOT NULL,
    mutual_tls_used           boolean      NOT NULL,
    supported_services        varchar(100) NOT NULL,
    FOREIGN KEY (bank_id) REFERENCES bank (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
