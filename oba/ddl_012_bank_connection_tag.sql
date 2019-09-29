USE oba;
DROP TABLE IF EXISTS oba.bank_connection_tag;

CREATE TABLE `bank_connection_tag`
(
    id                             binary(16)   NOT NULL,
    application_bank_onboarding_id binary(16)   NOT NULL,
    tag                            varchar(100) NOT NULL,
    created                        datetime     NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (application_bank_onboarding_id, tag),
    INDEX (tag),
    FOREIGN KEY (application_bank_onboarding_id) REFERENCES application_bank_onboarding (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
