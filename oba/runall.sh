for sql_file in `ls ./ddl_*.sql`; do mysql -uroot -p$(cat pw) < $sql_file ; done
for sql_file in `ls ./dml_*.sql`; do mysql -uroot -p$(cat pw) < $sql_file ; done
