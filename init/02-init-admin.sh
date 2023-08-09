curl --location --request POST 'http://localhost:6060/uaa/admin/intialize-admin' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "email": "super_admin@esport.com",
    "password": "esport@1234",
    "mobileNo": "01225542542",
    "allAuthorities": [
        "02336525"
    ],
    "orgAuthorities": [],
    "preferredLanguage": "EN",
    "note": ""
    }'
