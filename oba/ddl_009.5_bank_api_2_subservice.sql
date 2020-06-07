USE oba;
DROP TABLE IF EXISTS oba.bank_api_2_subservice;

# Shows which subservices for a bank have been implemented
CREATE TABLE bank_api_2_subservice
(
    id              binary(16)  NOT NULL,
    group_type_name varchar(25) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (group_type_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
