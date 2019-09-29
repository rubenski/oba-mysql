USE oba;
DROP TABLE IF EXISTS oba.account;

CREATE TABLE `account`
(
    id                  binary(16)   NOT NULL,
    bank_connection_id  binary(16)   NOT NULL,
    name                varchar(150) NOT NULL,
    account_number      varchar(150) NOT NULL,
    account_number_type varchar(50)  NOT NULL,
    account_type        char(15)     NOT NULL,
    balances            int          NOT NULL,
    available_balances  int          NOT NULL,
    currency            varchar(3)   NULL,
    created             datetime     NOT NULL,
    last_updated        datetime     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (bank_connection_id) REFERENCES bank_connection (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
