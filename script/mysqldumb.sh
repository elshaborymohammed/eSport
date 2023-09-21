/usr/local/opt/mysql-client/bin/mysqldump team-club-uat \
  --result-file=/Users/elshaboury/Downloads/01-team-club-uat.sql \
  --complete-insert \
  --skip-add-locks \
  --skip-lock-tables \
  --skip-disable-keys \
  --user=readonly \
  --host=127.0.0.1 \
  --port=51041