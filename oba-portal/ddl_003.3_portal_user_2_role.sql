USE obaportal;
DROP TABLE IF EXISTS obaportal.portal_user_2_role;

CREATE TABLE portal_user_2_role
(
    portal_user_id binary(16)  NOT NULL,
    role           varchar(20) NOT NULL,
    PRIMARY KEY (portal_user_id, role),
    FOREIGN KEY (portal_user_id) references portal_user(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (role) references role(role) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
