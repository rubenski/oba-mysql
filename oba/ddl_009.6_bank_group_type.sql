USE oba;
DROP TABLE IF EXISTS oba.api_provider_group_type;

CREATE TABLE api_provider_group_type
(
    id              binary(16)  NOT NULL,
    group_type_name varchar(25) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (group_type_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
