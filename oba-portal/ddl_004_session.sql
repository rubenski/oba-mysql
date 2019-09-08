USE obaportal;
DROP TABLE IF EXISTS obaportal.session;

CREATE TABLE `session`
(
    id             char(40)          NOT NULL,
    portal_user_id smallint UNSIGNED NOT NULL,
    last_used      datetime          NOT NULL,
    created        datetime          NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (portal_user_id) REFERENCES portal_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
