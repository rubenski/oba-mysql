USE oba;
DROP TABLE IF EXISTS oba.api;

CREATE TABLE api
(
    id                                 binary(16)   NOT NULL,
    type                               char(30)     NOT NULL,
    financial_organization_system_name char(30)     NOT NULL,
    base_url                           varchar(255) NOT NULL,
    request_signing_used               boolean      NOT NULL,
    request_signing_algorithm          varchar(20)  NOT NULL,
    mutual_tls_used                    boolean      NOT NULL,
    is_sandbox                         boolean      NOT NULL,
    status                             varchar(20)  NOT NULL,
    closed_from                        datetime     NULL,
    closed_until                       datetime     NULL,
    FOREIGN KEY (financial_organization_system_name) REFERENCES financial_organization (system_name) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id),
    UNIQUE (type, financial_organization_system_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
