#!/bin/bash

#ssh -L 33006:10.11.4.6:3306 -i ~/.ssh/readonly_key readonly@81.208.160.82

#/usr/local/opt/mysql-client/bin/mysqldump -P 33006 -h 127.0.0.1 -u readonly -pr3@d0NlY --databases team-club-qa > esport-dumb.sql

/usr/local/opt/mysql-client/bin/mysqldump --databases team-club-qa user-qa \
  --result-file="$HOME/Workspace/stc-solutions/eSport/database-dumb/dumb/eSport-dumb-qa.sql" \
  --complete-insert \
  --skip-add-locks \
  --skip-lock-tables \
  --skip-disable-keys \
  --set-gtid-purged=ON \
  --host=127.0.0.1 \
  --port=33006 \
  --user=readonly \
  --password=r3@d0NlY