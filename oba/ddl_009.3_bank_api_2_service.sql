USE oba;
DROP TABLE IF EXISTS oba.bank_api_2_service;

CREATE TABLE bank_api_2_service
(
    bank_api_id         binary(16) NOT NULL,
    bank_api_service_id binary(16) NOT NULL,
    PRIMARY KEY (bank_api_id, bank_api_service_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
