for sql_file in `ls ./*.sql`; do mysql -uroot -p$(cat pw) < $sql_file ; done
