for sql_file in `ls ./ddl_*.sql`; do mysql -uroot -p$(cat pw) < $sql_file ; done
