curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  --location --request POST 'http://127.0.0.1:8052/customer/v1/customer/super-customer' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "userEmail": "super_customer@esports.com",
    "accountManagerEmail": "account_manager@esports.com",
    "primaryContactEmail": "primary_contact@esports.com",
    "crNumber": "1966123453",
    "mobileNumber": "+966554254232",
    "name" : "Saudi Esports Federation SEF",
    "password": "abc@123"
    }'
