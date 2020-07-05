USE oba;
DROP TABLE IF EXISTS oba.financial_organization;

CREATE TABLE `financial_organization`
(
    system_name        char(30)    NOT NULL,
    display_name       varchar(50) NOT NULL,
    UNIQUE (display_name),
    PRIMARY KEY (system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
