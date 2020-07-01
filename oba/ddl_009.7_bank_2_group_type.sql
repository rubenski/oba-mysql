USE oba;
DROP TABLE IF EXISTS oba.api_provider_2_group_type;

create TABLE api_provider_2_group_type
(
    api_provider_system_name char(30)    NOT NULL,
    group_type_id    binary(16)  NOT NULL,
    group_name       varchar(25) NOT NULL,
    PRIMARY KEY (api_provider_system_name, group_type_id),
    FOREIGN KEY (api_provider_system_name) REFERENCES api_provider (system_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (group_type_id) REFERENCES api_provider_group_type (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
