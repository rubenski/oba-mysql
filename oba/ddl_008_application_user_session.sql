USE oba;
DROP TABLE IF EXISTS oba.application_user_session;

CREATE TABLE application_user_session
(
    id                  int UNSIGNED AUTO_INCREMENT NOT NULL,
    application_user_id int UNSIGNED                NOT NULL,
    state_param         char(36)                    NULL,
    created             datetime                    NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
