USE oba;
DROP TABLE IF EXISTS oba.transaction;

CREATE TABLE `transaction`
(
    id                                binary(16)    NOT NULL,
    bank_id                           varchar(80)   NULL,
    account_id                        binary(16)    NOT NULL,
    created                           datetime      NOT NULL,
    -- updated is null when the transaction is first created and must ONLY be updated when the transaction becomes meaningfully different
    updated                           datetime      NULL,
    amount                            numeric(10, 2) NOT NULL,
    currency                          varchar(3)    NOT NULL,
    description                       varchar(255)  NULL,
    -- we duplicate one of the dates as the 'date' in order to facilitate date-range queries and a NOT NULL field for display
    date                              int unsigned  NOT NULL,
    status                            char(30)      NOT NULL,
    counterparty_name                 varchar(100)  NULL,
    counterparty_iban                 varchar(40)   NULL,
    counterparty_bban                 varchar(40)   NULL,
    end_to_end_id                     varchar(50)   NULL,
    booking_date                      int unsigned  NULL,
    value_date                        int unsigned  NULL,
    untyped_date                      int unsigned  NULL,
    bank_transaction_code             varchar(50)   NULL,
    check_id                          varchar(50)   NULL,
    entry_reference                   varchar(50)   NULL,
    -- Having two currencies below seems redundant and it probably is, because we save just a single currency echange. There could be multiple.
    -- Banks always provide original amount and exchange rate(s) separately, with separate currencies
    original_amount                   numeric(10, 2) NULL,
    original_amount_currency          varchar(3)    NULL,
    exchange_rate                     varchar(20)   NULL,
    exchange_rate_currency            varchar(3)    NULL,
    mandate_id                        varchar(50)   NULL,
    proprietary_bank_transaction_code varchar(10)   NULL,
    purpose_code                      varchar(10)   NULL,
    transaction_type                  varchar(30)   NULL,
    reason_code                       varchar(20)   NULL,
    remittance_information_structured varchar(30)   NULL,
    creditor_id                       varchar(30)   NULL,
    FOREIGN KEY (account_id) REFERENCES account (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

ALTER TABLE transaction
    ADD INDEX idx_transaction_bank_id (bank_id);

ALTER TABLE transaction
    ADD INDEX idx_transaction_id (id);

ALTER TABLE transaction
    ADD INDEX idx_transaction_date (account_id, date);
