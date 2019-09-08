USE obaportal;
DROP TABLE IF EXISTS obaportal.portal_user;

CREATE TABLE `portal_user`
(
    id              smallint UNSIGNED AUTO_INCREMENT NOT NULL,
    cognito_user_id varchar(36)                      NOT NULL,
    organization_id char(36)                         NOT NULL,
    first_login     datetime                         NULL,
    created         datetime                         NOT NULL,
    PRIMARY KEY (id),
    UNIQUE(cognito_user_id),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
