USE oba;
DROP TABLE IF EXISTS oba.account;

CREATE TABLE `account`
(
    id            binary(16)   NOT NULL,
    connection_id binary(16)   NOT NULL,
    balances      text         NOT NULL,
    created       datetime     NOT NULL,
    last_updated  datetime     NOT NULL,
    iban          char(30)     NULL,
    bban          char(30)     NULL,
    maskedPan     char(30)     NULL,
    type          char(30)     NOT NULL,
    currency      char(5)      NOT NULL,
    enabled       boolean      NOT NULL,
    name          varchar(150) NOT NULL,
    resource_id   char(50)     NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (connection_id) REFERENCES connection (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
