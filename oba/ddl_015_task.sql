USE oba;
DROP TABLE IF EXISTS oba.task;

CREATE TABLE `task`
(
    id                  binary(16) NOT NULL,
    application_id      binary(16) NOT NULL,
    status              char(15)   NOT NULL,
    seconds_since_start smallint   NOT NULL,
    created             datetime   NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
