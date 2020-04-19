USE oba;
DROP TABLE IF EXISTS oba.client_key;

CREATE TABLE application_public_key
(
    id             binary(16)  NOT NULL,
    application_id binary(16)  NOT NULL,
    kid            varchar(40) NOT NULL,
    public_key     text        NOT NULL,
    created        datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (application_id, kid)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
