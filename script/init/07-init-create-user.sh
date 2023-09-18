curl --location --request POST 'http://localhost:6060/uaa/user' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer ' \
  --data-raw '{
    "firstName": "mohammed",
    "email": "mohammed@employee.com",
    "mobileNo": "1091891065",
    "nationalityId": 23,
    "gender": "MALE",
    "internalType": "EMPLOYEE",
    "profileId": "2e6e84b1-2a9e-4a1c-a211-d228472fcc78",
    "levelId": "28b93498-b7d7-479e-8815-7ff8cbddea6a",
    "countryCode": "+20"
    }'
