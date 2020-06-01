USE obaportal;
DROP TABLE IF EXISTS obaportal.role;

CREATE TABLE role
(
    role varchar(20) NOT NULL,
    PRIMARY KEY (`role`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
