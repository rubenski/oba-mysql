USE oba;
DROP TABLE IF EXISTS oba.bank;

CREATE TABLE `bank`
(
    id                              binary(16)   NOT NULL,
    display_name                    varchar(50)  NOT NULL,
    system_name                     varchar(50)  NOT NULL,
    maintenance_from                datetime     NULL,
    maintenance_to                  datetime     NULL,
    created                         datetime     NOT NULL,
    UNIQUE (system_name),
    UNIQUE (display_name),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
