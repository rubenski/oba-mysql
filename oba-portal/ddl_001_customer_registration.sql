USE obaportal;
DROP TABLE IF EXISTS obaportal.customer_registration;

CREATE TABLE `customer_registration`
(
    id             varchar(36)  NOT NULL,
    first_name      varchar(50) NOT NULL,
    last_name       varchar(50)  NOT NULL,
    email          varchar(50)  NOT NULL,
    email_verified boolean      NOT NULL DEFAULT FALSE,
    company_name   varchar(100) NOT NULL,
    likely_a_bot   boolean      NOT NULL DEFAULT FALSE,
    full_request   text         NULL,
    created        datetime     NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE (email)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

