USE oba;
DROP TABLE IF EXISTS oba.bank_tag;

CREATE TABLE bank_tag
(
    id                   binary(16)   NOT NULL,
    api_registration_id binary(16)   NOT NULL,
    tag                  varchar(100) NOT NULL,
    created              datetime     NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (api_registration_id, tag),
    INDEX (tag),
    FOREIGN KEY (api_registration_id) REFERENCES api_registration (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
