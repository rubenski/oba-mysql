USE oba;
DROP TABLE IF EXISTS oba.api_subservice;

CREATE TABLE api_subservice
(
    system_name             char(30) NOT NULL,
    display_name            char(50) NOT NULL,
    api_service_system_name char(30) NOT NULL,
    FOREIGN KEY (api_service_system_name) REFERENCES api_service (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
