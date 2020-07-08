USE oba;
DROP TABLE IF EXISTS oba.financial_organization_2_group_type;

create TABLE financial_organization_2_group_type
(
    financial_organization_system_name char(30)    NOT NULL,
    group_type_id                      binary(16)  NOT NULL,
    group_name                         varchar(25) NOT NULL,
    group_icon_base64                  text        NOT NULL,
    PRIMARY KEY (financial_organization_system_name, group_type_id),
    FOREIGN KEY (financial_organization_system_name) REFERENCES financial_organization (system_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (group_type_id) REFERENCES financial_organization_group_type (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
