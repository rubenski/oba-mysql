USE oba;
DROP TABLE IF EXISTS oba.api;

CREATE TABLE api
(
    id                        binary(16)  NOT NULL,
    type                      char(30)    NOT NULL,
    flow_type                 varchar(20) NOT NULL,
    request_signing_used      boolean     NOT NULL,
    request_signing_algorithm varchar(20) NOT NULL,
    mutual_tls_used           boolean     NOT NULL,
    is_sandbox                boolean     NOT NULL,
    connection_per_account    boolean     NOT NULL,
    status                    varchar(20) NOT NULL,
    maintenance_from          datetime    NULL,
    maintenance_until         datetime    NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
