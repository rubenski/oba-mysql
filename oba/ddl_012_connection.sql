USE oba;
DROP TABLE IF EXISTS oba.connection;

CREATE TABLE `connection`
(
    id                  binary(16)  NOT NULL,
    api_registration_id binary(16)  NOT NULL,
    application_user_id binary(16)  NOT NULL,
    type                varchar(20) NOT NULL,
    status              varchar(20) NOT NULL,
    created             datetime    NOT NULL,
    last_updated        datetime    NOT NULL,
    token_enc           text        NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (api_registration_id) REFERENCES api_registration (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
