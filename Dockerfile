FROM mysql:8.0 as mysql

COPY db/*.sql /docker-entrypoint-initdb.d/
RUN chmod -R 775 /docker-entrypoint-initdb.d
