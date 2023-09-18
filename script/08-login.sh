env="Local"
username="super_customer@esports.com"
password="abc@123"
echo "ENV=$env"

#http -v --form POST "http://127.0.0.1:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
#             "Content-Type: application/x-www-form-urlencoded" \
#             client_id=WEB grant_type=password username=$username password=$password

#http -v --form POST "http://127.0.0.1:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
#        "Content-Type: application/x-www-form-urlencoded" \
#        client_id=WEB \
#        grant_type=password \
#        username=$username \
#        password=$password \
#        | jq .access_token | sed -e 's/\"//g'

#curl -X POST --location "http://localhost:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
#            -H "Content-Type: application/x-www-form-urlencoded" \
#            -d "username=super_customer@esports.com&password=abc@123&client_id=WEB&grant_type=password" \
#            | jq '.access_token' | while read line; do \
#                echo ">  $line"; \
#                echo "\n\n"; \
#                echo ">>  $line"; \
#              done
#

access_token=$(curl -X POST --location "http://127.0.0.1:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')

# echo "access_token=$access_token"
printf "\n\n"


#curl -X POST --location "http://127.0.0.1:9080/uaa/profile/reserved-profiles" \
#         -H "Content-Type: application/json" \
#         -H "Authorization: Bearer $access_token";
#
#curl -X POST --location "http://127.0.0.1:9080/uaa/profile/team-profiles" \
#         -H "Content-Type: application/json" \
#         -H "Authorization: Bearer $access_token";


http -v POST "http://127.0.0.1:9080/uaa/profile/reserved-profiles" \
       "Content-Type: application/json" \
       "Authorization: Bearer $access_token" \
       ;

http -v POST "http://127.0.0.1:9080/uaa/profile/team-profiles" \
        "Content-Type: application/json" \
        "Authorization: Bearer $access_token" \
       ;