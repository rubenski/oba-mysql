USE oba;
DROP TABLE IF EXISTS oba.account;

CREATE TABLE `account`
(
    id                            binary(16)    NOT NULL,
    bank_id                       varchar(100)  NOT NULL,
    connection_id                 binary(16)    NOT NULL,
    returned_in_last_data_refresh boolean       NOT NULL,
    balance_booked                numeric(8, 2) NULL,
    balance_available             numeric(8, 2) NULL,
    balance_expected              numeric(8, 2) NULL,
    created                       datetime      NOT NULL,
    last_updated                  datetime      NOT NULL,
    iban                          char(30)      NULL,
    bban                          char(30)      NULL,
    masked_pan                    char(30)      NULL,
    bic                           char(30)      NULL,
    type                          char(30)      NOT NULL,
    currency                      char(5)       NOT NULL,
    enabled                       char(5)       NULL,
    name                          varchar(150)  NOT NULL,
    owner_name                    varchar(150)  NULL,
    product                       varchar(50)   NULL,
    resource_id                   char(150)     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (connection_id) REFERENCES connection (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE account
    ADD INDEX idx_account_bank_ix (bank_id);