USE oba;
DROP TABLE IF EXISTS oba.connection;
# Api registration could be removed during the lifecycle of the connection. Therefore the
# api_registration_id is nullable
CREATE TABLE `connection`
(
    id                               binary(16) NOT NULL,
    last_consent_registration_id     binary(16) NOT NULL,
    last_refresh_api_registration_id binary(16) NULL,
    country_data_provider            char(30)   NOT NULL,
    application_user_id              binary(16) NOT NULL,
    consent_valid                    boolean    NOT NULL,
    token_enc                        text       NOT NULL,
    token_enc_iv                     text       NOT NULL,
    initial_data_fetched             boolean    NOT NULL DEFAULT FALSE,
    created                          datetime   NOT NULL,
    last_consent_time                datetime   NOT NULL,
    last_refresh_attempt_time        datetime   NULL,
    last_successful_refresh_time     datetime   NULL,
    expected_consent_expiration_time datetime   NULL,
    last_refresh_result              char(30)   NULL,
    auto_delete_after                char(20)   NULL,
    refresh_frequency_override       char(20)   NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (last_consent_registration_id) REFERENCES api_registration (id) ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (last_refresh_api_registration_id) REFERENCES api_registration (id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (country_data_provider) REFERENCES country_data_provider (system_name) ON UPDATE CASCADE ON DELETE NO ACTION
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
