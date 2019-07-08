USE oba;
DROP TABLE IF EXISTS oba.client_key;

CREATE TABLE `client_key`
(
    client_id  varchar(36) NOT NULL,
    key_id     varchar(36) NOT NULL,
    public_key text        NOT NULL,
    created    datetime    NOT NULL,
    PRIMARY KEY (`client_id`, `key_id`),
    FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
