USE oba;
DROP TABLE IF EXISTS oba.bank;

CREATE TABLE `bank`
(
    id                 binary(16)  NOT NULL,
    display_name       varchar(50) NOT NULL,
    implementation_key varchar(50) NOT NULL,
    maintenance_from   datetime    NULL,
    maintenance_to     datetime    NULL,
    UNIQUE (display_name),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
