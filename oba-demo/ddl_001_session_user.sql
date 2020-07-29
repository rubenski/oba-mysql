USE obademo;
DROP TABLE IF EXISTS obademo.session;

CREATE TABLE session
(
    id      binary(16) NOT NULL,
    user_id binary(16) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
