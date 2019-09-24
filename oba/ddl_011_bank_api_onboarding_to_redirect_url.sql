USE oba;
DROP TABLE IF EXISTS oba.bank_api_onboarding_to_redirect_url;

CREATE TABLE application_bank_onboarding_to_redirect_url
(
    application_bank_onboarding_id char(36) NOT NULL,
    application_redirect_url_id    char(36) NOT NULL,
    FOREIGN KEY (application_bank_onboarding_id) REFERENCES application_bank_onboarding (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_redirect_url_id) REFERENCES application_redirect_url (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (application_bank_onboarding_id, application_redirect_url_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
