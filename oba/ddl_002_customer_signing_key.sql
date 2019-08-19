USE oba;
DROP TABLE IF EXISTS oba.customer_signing_key;

CREATE TABLE `customer_signing_key`
(
    id              smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    name            varchar(100)                     NOT NULL,
    customer_id     smallint UNSIGNED                NOT NULL,
    private_key_enc text                             NOT NULL,
    created         datetime                         NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (customer_id) REFERENCES customer (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (customer_id, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
