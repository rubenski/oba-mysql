USE oba;
DROP TABLE IF EXISTS oba.bank_api_2_subservice;

# Shows which subservices for a bank have been implemented
CREATE TABLE bank_api_2_subservice
(
    bank_api_id            binary(16) NOT NULL,
    subservice_system_name char(50)   NOT NULL,
    PRIMARY KEY (bank_api_id, subservice_system_name),
    FOREIGN KEY (bank_api_id) REFERENCES bank_api (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (subservice_system_name) REFERENCES subservice (system_name) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
