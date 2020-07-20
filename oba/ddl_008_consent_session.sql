USE oba;
DROP TABLE IF EXISTS oba.consent_session;

CREATE TABLE consent_session
(
    id                                binary(16)   NOT NULL,
    application_user_id               binary(16)   NOT NULL,
    country_data_provider_system_name char(30)     NOT NULL,
    state_param                       char(36)     NULL,
    created                           datetime     NOT NULL,
    completed                            datetime     NULL,
    user_returned                     datetime     NULL,
    redirect_url                      varchar(255) NOT NULL,
    authentication_url                text         NULL,
    result                            char(20)     NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (application_user_id) REFERENCES application_user (id) ON UPDATE CASCADE ON DELETE CASCADE,
    UNIQUE (state_param)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
