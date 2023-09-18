curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  --location --request POST 'http://localhost:6060/uaa/admin/intialize-admin' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "email": "admin@esport.sa",
    "password": "abc123",
    "mobileNo": "01225542542",
    "allAuthorities": [
        "02336525"
    ],
    "orgAuthorities": [],
    "preferredLanguage": "EN",
    "note": ""
    }'
