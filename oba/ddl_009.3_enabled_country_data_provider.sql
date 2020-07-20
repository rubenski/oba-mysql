USE oba;
DROP TABLE IF EXISTS oba.enabled_country_data_provider;

CREATE TABLE enabled_country_data_provider
(
    country_data_provider_system_name char(30)   NOT NULL,
    application_id                    binary(16) NOT NULL,
    FOREIGN KEY (country_data_provider_system_name) REFERENCES country_data_provider (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (application_id) REFERENCES application (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (country_data_provider_system_name, application_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
