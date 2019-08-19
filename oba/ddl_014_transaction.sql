USE oba;
DROP TABLE IF EXISTS oba.transaction;

CREATE TABLE `transaction`
(
    id                                bigint UNSIGNED AUTO_INCREMENT NOT NULL,
    account_id                        int UNSIGNED                   NOT NULL,
    amount                            int                            NOT NULL,
    currency                          varchar(3)                     NOT NULL,
    debtor_name                       char(40)                       NULL,
    debtor_account_nr                 char(20)                       NULL,
    debtor_account_nr_type            char(20)                       NULL,
    creditor_name                     char(40)                       NULL,
    creditor_account_nr               char(20)                       NULL,
    creditor_account_nr_type          char(20)                       NULL,
    date                              date                           NOT NULL,
    remittanceInformationUnstructured char(140)                      NULL,
    remittanceInformationStructured   char(140)                      NULL,
    bank_transaction_id               char(20)                       NULL,
    created                           datetime                       NOT NULL,
    last_updated                      datetime                       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (account_id) REFERENCES account (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
