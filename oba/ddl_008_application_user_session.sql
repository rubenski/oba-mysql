USE oba;
DROP TABLE IF EXISTS oba.application_user_session;

CREATE TABLE application_user_session
(
    id                  binary(16) NOT NULL,
    application_user_id binary(16) NOT NULL,
    state_param         char(36)   NULL,
    created             datetime   NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (application_user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
