USE oba;
DROP TABLE IF EXISTS oba.api_registration_2_redirect_url;

CREATE TABLE api_registration_2_redirect_url
(
    api_registration_id binary(16) NOT NULL,
    redirect_url_id    binary(16) NOT NULL,
    FOREIGN KEY (api_registration_id) REFERENCES api_registration (id) ON UPDATE CASCADE ON DELETE NO ACTION ,
    FOREIGN KEY (redirect_url_id) REFERENCES redirect_url (id) ON UPDATE CASCADE ON DELETE NO ACTION ,
    PRIMARY KEY (api_registration_id, redirect_url_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
