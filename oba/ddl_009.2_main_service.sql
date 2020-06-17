USE oba;
DROP TABLE IF EXISTS oba.main_service;

CREATE TABLE main_service
(
    system_name  char(50) NOT NULL,
    display_name char(50) NOT NULL,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
