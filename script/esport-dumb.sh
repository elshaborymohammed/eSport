#!/bin/bash

while getopts e:h:r:u:p:o: flag
do
    case "${flag}" in
        e) env=${OPTARG};;
        h) host=${OPTARG};;
        r) port=${OPTARG};;
        u) username=${OPTARG};;
        p) password=${OPTARG};;
        o) output=${OPTARG};;
    esac
done

env=${env:-"dev"}
host=${host:-"127.0.0.1"}
port=${port:-"33006"}
username=${username:-"readonly"}
password=${password:-"r3@d0NlY"}
output=${output:-"$HOME/Workspace/stc-solutions/eSport/database-dumb/dumb/"}

printf "\033[1;33m output: $output/eSport-dumb-$env.sql \033[0m\n\n"

#ssh -L 33006:10.11.4.6:3306 -i ~/.ssh/readonly_key readonly@81.208.160.82

#/usr/local/opt/mysql-client/bin/mysqldump -P 33006 -h 127.0.0.1 -u readonly -pr3@d0NlY --databases team-club-qa > esport-dumb.sql

mysqldump --databases "team-club-$env" "user-$env" \
  --result-file="$output/eSport-dumb-$env.sql" \
  --complete-insert \
  --skip-add-locks \
  --skip-lock-tables \
  --skip-disable-keys \
  --set-gtid-purged=ON \
  --host="$host" \
  --port="$port" \
  --user="$username" \
  --password="$password"
#  > "$output/eSport-dumb-$env.sql"