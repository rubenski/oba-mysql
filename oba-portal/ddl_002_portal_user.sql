USE obaportal;
DROP TABLE IF EXISTS obaportal.portal_user;

CREATE TABLE `portal_user`
(
    id                 varchar(36) NOT NULL,
    cognito_user_id    varchar(36) NULL,
    invited_by_user_id varchar(36) NULL,
    first_login        datetime    NULL,
    created            datetime    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
