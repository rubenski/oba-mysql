USE obaportal;
DROP TABLE IF EXISTS obaportal.registration;

CREATE TABLE `registration`
(
    id                       binary(16)   NOT NULL PRIMARY KEY,
    cognito_user_id          varchar(50)  NOT NULL,
    organization_name        varchar(100) NOT NULL,
    likely_a_bot             boolean      NOT NULL DEFAULT FALSE,
    full_request             text         NULL,
    promoted_to_organization binary(16)   NULL,
    created                  datetime     NOT NULL,
    UNIQUE (cognito_user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

