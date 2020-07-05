USE oba;
DROP TABLE IF EXISTS oba.enabled_api;

CREATE TABLE enabled_api
(
    api_id         binary(16) NOT NULL,
    application_id binary(16) NOT NULL,
    FOREIGN KEY (api_id) REFERENCES api (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (api_id, application_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
