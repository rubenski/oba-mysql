USE oba;
DROP TABLE IF EXISTS oba.bank_2_group_type;

create TABLE bank_2_group_type
(
    bank_id       binary(16)  NOT NULL,
    group_type_id binary(16)  NOT NULL,
    group_name    varchar(25) NOT NULL,
    PRIMARY KEY (bank_id, group_type_id),
    UNIQUE (group_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
