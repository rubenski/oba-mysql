FROM mysql:8.0 as mysql

COPY ./*.sql /docker-entrypoint-initdb.d/
RUN chmod -R 775 /docker-entrypoint-initdb.d
