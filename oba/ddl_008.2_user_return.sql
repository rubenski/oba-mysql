USE oba;
DROP TABLE IF EXISTS oba.user_return;

CREATE TABLE user_return
(
    id                       binary(16)   NOT NULL,
    consent_session_state_id binary(16)   NOT NULL,
    full_return_url          varchar(255) NULL,
    created                  datetime     NOT NULL,
    completed                datetime     NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (consent_session_state_id) REFERENCES oauth_consent_session (state_id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (full_return_url)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
