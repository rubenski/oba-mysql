USE oba;
DROP TABLE IF EXISTS oba.api_2_product;

CREATE TABLE api_2_product
(
    api_id binary(16)  NOT NULL,
    name   varchar(30) NOT NULL,
    FOREIGN KEY (api_id) REFERENCES api(id),
    FOREIGN KEY(name) REFERENCES product(name),
    PRIMARY KEY (api_id, name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
