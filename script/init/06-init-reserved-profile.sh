username="super_customer@esports.com"
password="abc@123"

access_token=$(curl -X POST --location "http://127.0.0.1:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')

printf "\n\n"

http POST "http://127.0.0.1:9080/uaa/profile/reserved-profiles" \
       "Content-Type: application/json" \
       "Authorization: Bearer $access_token" \
       ;

http POST "http://127.0.0.1:9080/uaa/profile/team-profiles" \
        "Content-Type: application/json" \
        "Authorization: Bearer $access_token" \
        ;

