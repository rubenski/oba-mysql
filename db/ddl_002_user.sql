USE oba;
DROP TABLE IF EXISTS oba.user;

CREATE TABLE `user`
(
    id        varchar(36) NOT NULL,
    created   datetime    NOT NULL,
    client_id varchar(36) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (client_id) REFERENCES client (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
