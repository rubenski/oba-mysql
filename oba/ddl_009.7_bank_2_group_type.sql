USE oba;
DROP TABLE IF EXISTS oba.bank_2_group_type;

create TABLE bank_2_group_type
(
    bank_system_name char(30)    NOT NULL,
    group_type_id    binary(16)  NOT NULL,
    group_name       varchar(25) NOT NULL,
    PRIMARY KEY (bank_system_name, group_type_id),
    FOREIGN KEY (bank_system_name) REFERENCES bank (system_name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (group_type_id) REFERENCES bank_group_type (id) ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (group_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
