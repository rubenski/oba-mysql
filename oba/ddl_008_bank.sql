USE oba;
DROP TABLE IF EXISTS oba.bank;

CREATE TABLE `bank`
(
    id                              char(36)     NOT NULL,
    created                         datetime     NOT NULL,
    display_name                    varchar(50)  NOT NULL,
    system_name                     varchar(50)  NOT NULL,
    supported_services              varchar(255) NOT NULL,
    maintenance_from                datetime     NULL,
    maintenance_to                  datetime     NULL,
    secrets_per_single_redirect_url boolean      NOT NULL,
    UNIQUE (system_name),
    UNIQUE (display_name),
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
