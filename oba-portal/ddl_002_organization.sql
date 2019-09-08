USE obaportal;
DROP TABLE IF EXISTS obaportal.organization;

CREATE TABLE `organization`
(
    id            char(36)     NOT NULL,
    name          varchar(100) NOT NULL,
    vat_number    varchar(50)  NULL,
    street        varchar(50)  NULL,
    street_number varchar(10)  NULL,
    created       datetime     NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

