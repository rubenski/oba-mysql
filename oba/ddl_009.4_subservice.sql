USE oba;
DROP TABLE IF EXISTS oba.subservice;

CREATE TABLE subservice
(
    system_name         char(50) NOT NULL,
    display_name        char(50) NOT NULL,
    parent_main_service char(30) NOT NULL,
    FOREIGN KEY (parent_main_service) REFERENCES main_service (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
