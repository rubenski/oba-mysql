USE oba;
DROP TABLE IF EXISTS oba.application_user;

CREATE TABLE application_user
(
    id             binary(16) NOT NULL,
    application_id binary(16) NOT NULL,
    first_name     char(30)   NULL,
    last_name      char(30)   NULL,
    country        char(3)    NULL,
    created        datetime   NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
