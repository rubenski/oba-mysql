USE obaportal;
DROP TABLE IF EXISTS obaportal.portal_user;

CREATE TABLE `portal_user`
(
    id              binary(16)  NOT NULL PRIMARY KEY,
    cognito_user_id varchar(36) NOT NULL,
    organization_id binary(16)  NOT NULL,
    first_login     datetime    NULL,
    created         datetime    NOT NULL,
    UNIQUE (cognito_user_id),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
