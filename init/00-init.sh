sh 01-init-customer.sh
printf "\n\n"

sh 02-init-admin.sh
printf "\n\n"

sh 03-apisix-upstreams.sh
printf "\n\n"

sh 04-apisix-routes.sh
printf "\n\n"

sh 05-reserved-profile.sh
printf "\n\n"