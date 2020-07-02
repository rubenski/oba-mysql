USE oba;
DROP TABLE IF EXISTS oba.financial_organization_tag;

CREATE TABLE financial_organization_tag
(
    id                       binary(16)   NOT NULL,
    financial_organization_system_name char(30)     NOT NULL,
    organization_id          binary(16)   NOT NULL,
    tag                      varchar(100) NOT NULL,
    created                  datetime     NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (financial_organization_system_name, tag),
    INDEX (tag),
    FOREIGN KEY (financial_organization_system_name) REFERENCES financial_organization (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
