USE oba;
DROP TABLE IF EXISTS oba.bank_registration_2_redirect_url;

CREATE TABLE bank_registration_2_redirect_url
(
    bank_registration_id binary(16) NOT NULL,
    redirect_url_id    binary(16) NOT NULL,
    FOREIGN KEY (bank_registration_id) REFERENCES bank_registration (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (redirect_url_id) REFERENCES redirect_url (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (bank_registration_id, redirect_url_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
