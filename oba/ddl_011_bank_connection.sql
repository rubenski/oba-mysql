USE oba;
DROP TABLE IF EXISTS oba.bank_connection;

CREATE TABLE `bank_connection`
(
    id                  int UNSIGNED AUTO_INCREMENT NOT NULL,
    type                varchar(20)                 NOT NULL,
    application_user_id int UNSIGNED                NOT NULL,
    bank_id             char(36)                    NOT NULL,
    status              varchar(20)                 NOT NULL,
    created             datetime                    NOT NULL,
    last_updated        datetime                    NOT NULL,
    token_enc           text                        NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
