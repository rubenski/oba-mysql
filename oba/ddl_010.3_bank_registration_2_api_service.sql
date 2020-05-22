USE oba;
DROP TABLE IF EXISTS oba.bank_registration_2_api_service;

CREATE TABLE bank_registration_2_api_service
(
    bank_registration_id binary(16) NOT NULL,
    api_service_id  binary(16) NOT NULL,
    FOREIGN KEY (bank_registration_id) REFERENCES bank_registration (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (api_service_id) REFERENCES redirect_url (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (bank_registration_id, api_service_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
