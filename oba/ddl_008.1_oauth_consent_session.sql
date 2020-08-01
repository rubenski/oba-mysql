USE oba;
DROP TABLE IF EXISTS oba.oauth_consent_session;

CREATE TABLE oauth_consent_session
(
    state_id                          binary(16)   NOT NULL,
    application_user_id               binary(16)   NOT NULL,
    country_data_provider_system_name char(30)     NOT NULL,
    pending_redirect                  text         NULL,
    return_url                        varchar(255) NOT NULL,
    created                           datetime     NOT NULL,
    completed                         datetime     NULL,
    result                            char(40)     NULL,
    session_data                      text         NULL,
    token_enc                         text         NULL,
    token_enc_iv                      text         NULL,
    expected_consent_expiration_time    datetime     NULL,
    PRIMARY KEY (state_id),
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

