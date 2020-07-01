USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE `application`
(
    id                                binary(16)  NOT NULL,
    organization_id                   binary(16)  NOT NULL,
    name                              varchar(20) NOT NULL,
    nr_of_automated_refreshes_per_day smallint             default 0 NOT NULL,
    technical_contact_name            varchar(80) NULL,
    technical_contact_email           varchar(80) NULL,
    created                           datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
