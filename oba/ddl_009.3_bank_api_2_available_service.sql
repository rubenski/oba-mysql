USE oba;
DROP TABLE IF EXISTS oba.bank_api_2_available_service;

CREATE TABLE bank_api_2_available_service
(
    bank_api_id         binary(16) NOT NULL,
    api_service_system_name char(30) NOT NULL,
    PRIMARY KEY (bank_api_id, api_service_system_name),
    FOREIGN KEY (bank_api_id) references bank_api(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (api_service_system_name) references bank_api_available_service(system_name) ON DELETE CASCADE  ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
