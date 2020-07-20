USE oba;
DROP TABLE IF EXISTS oba.api_provider;

CREATE TABLE `country_data_provider`
(
    system_name  char(30)     NOT NULL,
    display_name varchar(50)  NOT NULL,
    api_id       binary(16)   NOT NULL,
    country      char(3)      NOT NULL,
    time_zone    varchar(30)  NOT NULL,
    currency     char(3)      NOT NULL,
    group_name   varchar(30)  NULL,
    PRIMARY KEY (system_name),
    FOREIGN KEY (api_id) REFERENCES api (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
