USE oba;
DROP TABLE IF EXISTS oba.transaction;

CREATE TABLE `transaction`
(
    id                                binary(16) NOT NULL,
    account_id                        binary(16) NOT NULL,
    amount                            int        NOT NULL,
    currency                          varchar(3) NOT NULL,
    debtor_name                       char(40)   NULL,
    debtor_account_nr                 char(20)   NULL,
    debtor_account_nr_type            char(20)   NULL,
    creditor_name                     char(40)   NULL,
    creditor_account_nr               char(20)   NULL,
    creditor_account_nr_type          char(20)   NULL,
    date                              datetime   NULL,
    remittanceInformationUnstructured char(140)  NULL,
    remittanceInformationStructured   char(140)  NULL,
    bank_transaction_id               char(20)   NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
    PARTITION BY KEY (id)
    PARTITIONS 20;
