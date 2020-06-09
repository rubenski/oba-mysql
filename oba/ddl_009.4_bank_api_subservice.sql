USE oba;
DROP TABLE IF EXISTS oba.bank_api_subservice;

CREATE TABLE bank_api_subservice
(
    system_name              char(50) NOT NULL,
    display_name             char(50) NOT NULL,
    parent_offered_service char(30) NOT NULL,
    FOREIGN KEY (parent_offered_service) REFERENCES bank_api_offered_service (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
