USE oba;
DROP TABLE IF EXISTS oba.api_service;

CREATE TABLE api_service
(
    system_name  char(30) NOT NULL,
    display_name char(50) NOT NULL,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
