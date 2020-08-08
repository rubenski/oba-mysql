USE oba;
DROP TABLE IF EXISTS oba.refresh_task;

CREATE TABLE `refresh_task`
(
    id       binary(16) NOT NULL,
    user_id  binary(16) NOT NULL,
    finished datetime   NOT NULL,
    created  datetime   NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
