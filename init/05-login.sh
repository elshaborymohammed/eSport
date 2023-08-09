curl -X POST --location "http://localhost:8081/auth/realms/cust_esports.com/protocol/openid-connect/token" \
            -H "Content-Type: application/x-www-form-urlencoded" \
            -d "username=super_customer@esports.com&password=Esports@1234&client_id=WEB&grant_type=password" \
            | jq '.access_token' | while read line; do \
                echo ">  $line"; \
                echo "====================================="; \
                echo ">>  $line"; \
              done