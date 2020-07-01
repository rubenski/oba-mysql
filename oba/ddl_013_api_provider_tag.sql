USE oba;
DROP TABLE IF EXISTS oba.api_provider_tag;

CREATE TABLE api_provider_tag
(
    id                       binary(16)   NOT NULL,
    api_provider_system_name char(30)   NOT NULL,
    tag                      varchar(100) NOT NULL,
    created                  datetime     NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (api_provider_system_name, tag),
    INDEX (tag),
    FOREIGN KEY (api_provider_system_name) REFERENCES api_provider (system_name) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
