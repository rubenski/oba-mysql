USE oba;
DROP TABLE IF EXISTS oba.connection_refresh;

# We set connection_id to null if the associated connection is deleted. We must keep the full task history, including
# connection ids that were included. The connection_id is NULLABLE, because the connection might get deleted.
# This is why we use UNIQUE instead of a primary key.
CREATE TABLE `connection_refresh`
(
    id              binary(16) NOT NULL,
    refresh_task_id binary(16) NOT NULL,
    connection_id   binary(16) NULL,
    created         datetime   NOT NULL,
    created_by      char(10)   NOT NULL,
    finished_by     char(20)   NULL,
    finished        datetime   NULL,
    result          char(50)   NULL,
    UNIQUE (refresh_task_id, connection_id),
    FOREIGN KEY (refresh_task_id) REFERENCES refresh_task (id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (connection_id) REFERENCES connection (id) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
