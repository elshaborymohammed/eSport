
env="Local"
username="super_customer@esports.com"
password="abc@123"
echo "ENV=$env"

access_token=$(curl -X POST --location "http://127.0.0.1:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')




curl -v -X PATCH \
"https://dev.saudiesports.sa/scheduler/v1/reminder/reschedule?triggerName=8d1914ad-74f1-472f-9c5a-a760fcab2431&date=1695304500000" \
-H "Authorization: Bearer $access_token"


