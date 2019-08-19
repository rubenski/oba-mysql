USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE api_client_redirect_url
(
    id            smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    api_client_id smallint UNSIGNED                NOT NULL,
    name          varchar(30)                      NOT NULL,
    redirect_url  varchar(255)                     NOT NULL,
    created       datetime                         NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (api_client_id) REFERENCES api_client (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
