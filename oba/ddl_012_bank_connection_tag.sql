USE oba;
DROP TABLE IF EXISTS oba.bank_connection_tag;

CREATE TABLE `bank_connection_tag`
(
    id                   binary(16)   NOT NULL,
    bank_registration_id binary(16)   NOT NULL,
    tag                  varchar(100) NOT NULL,
    created              datetime     NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (bank_registration_id, tag),
    INDEX (tag),
    FOREIGN KEY (bank_registration_id) REFERENCES bank_registration (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
