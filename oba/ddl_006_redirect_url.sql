USE oba;
DROP TABLE IF EXISTS oba.redirect_url;

CREATE TABLE redirect_url
(
    id              binary(16)   NOT NULL,
    organization_id binary(16)   NOT NULL,
    redirect_url    varchar(255) NOT NULL,
    created         datetime     NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
