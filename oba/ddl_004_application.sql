USE oba;
DROP TABLE IF EXISTS oba.client;

CREATE TABLE `application`
(
    id                                char(36)     NOT NULL,
    organization_id                   char(36)     NOT NULL,
    name                              varchar(30)  NOT NULL,
    nr_of_automated_refreshes_per_day smallint     NOT NULL,
    account_types                     varchar(255) NULL,
    notification_email_addresses      varchar(255) NOT NULL,
    created                           datetime     NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (organization_id) REFERENCES organization (id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
