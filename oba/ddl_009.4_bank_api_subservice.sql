USE oba;
DROP TABLE IF EXISTS oba.bank_api_subservice;

CREATE TABLE bank_api_subservice
(
    system_name             char(30) NOT NULL,
    display_name            char(50) NOT NULL,
    parent_available_service char(30) NOT NULL,
    FOREIGN KEY (parent_available_service) REFERENCES bank_api_available_service (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
