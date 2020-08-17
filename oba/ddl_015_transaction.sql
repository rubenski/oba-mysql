USE oba;
DROP TABLE IF EXISTS oba.transaction;

CREATE TABLE `transaction`
(
    id                                binary(16)   NOT NULL,
    account_id                        binary(16)   NOT NULL,
    bank_id                           varchar(30)  NULL,
    created                           datetime     NOT NULL,
    updated                           datetime     NOT NULL,
    amount                            int          NOT NULL,
    currency                          varchar(3)   NOT NULL,
    description                       varchar(255) NOT NULL,
    date                              datetime     NOT NULL,
    status                            char(30)     NOT NULL,
    counterparty_name                 varchar(100) NULL,
    counterparty_account_number       varchar(40)  NULL,
    end_to_end_id                     varchar(50)  NULL,
    booking_date                      datetime     NULL,
    value_date                        datetime     NULL,
    bank_transaction_code             varchar(50)  NULL,
    check_id                          varchar(50)  NULL,
    entry_reference                   varchar(50)  NULL,
    original_amount                   int          NULL,
    exchange_rate_original_currency   char(5)      NULL,
    exchange_rate                     varchar(20)  NULL,
    mandate_id                        varchar(50)  NULL,
    proprietary_bank_transaction_code varchar(10)  NULL,
    purpose_code                      varchar(10)  NULL,
    transaction_type                  varchar(30)  NULL,
    reason_code                       varchar(20)  NULL,
    remittance_information_structured varchar(30)  NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE transaction ADD INDEX idx_transaction_bank_ix (bank_id);
