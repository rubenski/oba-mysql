USE oba;
DROP TABLE IF EXISTS oba.api_service;

CREATE TABLE api_service
(
    id           binary(16) NOT NULL,
    service_name char(25)   NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
