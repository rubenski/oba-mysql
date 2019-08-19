USE oba;
DROP TABLE IF EXISTS oba.bank_connection_tag;

CREATE TABLE `bank_connection_tag`
(
    id                 int UNSIGNED AUTO_INCREMENT NOT NULL,
    bank_connection_id int UNSIGNED                NOT NULL,
    tag                varchar(100)                NOT NULL,
    created            datetime                    NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (bank_connection_id, tag),
    INDEX(tag),
    FOREIGN KEY (bank_connection_id) REFERENCES bank_connection (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
