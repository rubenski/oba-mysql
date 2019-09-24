USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE application_redirect_url
(
    id             char(36)     NOT NULL,
    application_id char(36)     NOT NULL,
    name           varchar(30)  NOT NULL,
    description    varchar(30)  NULL,
    redirect_url   varchar(255) NOT NULL,
    created        datetime     NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (redirect_url)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
