USE oba;
DROP TABLE IF EXISTS oba.client_key;

CREATE TABLE `api_client_authentication_key`
(
    id            smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    api_client_id smallint UNSIGNED                NOT NULL,
    kid           varchar(40)                      NOT NULL,
    public_key    text                             NOT NULL,
    created       datetime                         NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (api_client_id) REFERENCES api_client (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (api_client_id, kid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
