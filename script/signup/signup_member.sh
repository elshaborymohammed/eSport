#!/bin/bash

while getopts n:e:r:u:p:o: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
        e) env=${OPTARG};;
        r) role=${OPTARG};;
        u) username=${OPTARG};;
        p) password=${OPTARG};;
        o) output=${OPTARG};;
    esac
done
num=${num:-1}
env=${env:-"dev"}
username=${username:-"admin@saudiesports.sa"}
password=${password:-"abc123"}


domain=
if [ "$env" = "local" ]; then
  domain="http://127.0.0.1:9080"
else
  domain="https://${env}.saudiesports.sa"
fi
printf "\033[1;33m>> env: $env - domain: $domain <<\033[0m\n"

function run() {
  entity="Person"
  role=${role:-"PLAYER"}
  code="+20"
  phone="10$(sh utils/random_number.sh -l 8)"
  name=$(sh utils/random_english.sh -l 5)
  mail="mailinator.com"

#  printf "\033[1;33m>> Check existence <<\033[0m\n"
  curl --silent -X POST --location "$domain/team-club/v1/public/club-owner-request/is-exist" \
      -H "Content-Type: application/json" \
      -d "{
            \"entity\": \"$entity\",
            \"propertyName\": \"$phone\",
            \"propertyValue\": \"$code$phone\"
          }"


#  printf "\033[1;33m>> Send OTP <<\033[0m\n"
  curl --silent -X POST --location "$domain/team-club/v1/public/otp/send" \
      -H "Content-Type: application/json" \
      -d "{
            \"mobileNumber\": \"${code}${phone}\"
          }"

  printf "\033[1;33m>> Signup with $name <<\033[0m"
  curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" \
      -X POST --location "$domain/team-club/v1/public/users/sign-up" \
      -H "Content-Type: application/json" \
      -d "{
            \"otpCode\": \"1111\",
            \"userSignUpDto\": {
              \"name\": \"$name $role\",
              \"email\": \"$name@$mail\",
              \"countryCode\": \"$code\",
              \"mobileNumber\": \"$code$phone\",
              \"gender\": \"MALE\",
              \"dateOfBirth\": \"\",
              \"countryId\": null,
              \"password\": \"abc123\",
              \"profileType\": \"$role\",
              \"profileName\": \"\"
            }
          }"

access_token=$(curl --silent -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                     -H "Content-Type: application/x-www-form-urlencoded" \
                     -d "username=$name@$mail&password=abc123&client_id=WEB&grant_type=password" \
                     | jq .access_token | sed -e 's/\"//g')

member_id=$(curl --silent -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/userinfo" \
                     -H "Authorization: Bearer $access_token" \
                     | jq .sub | sed -e 's/\"//g')

  curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" \
    -X POST --location "$domain/team-club/v1/game" \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer $access_token" \
    --data-raw "{
                  \"code\": \"APEX_LEGENDS\",
                  \"memberId\": \"$member_id\",
                  \"values\": [
                    {
                      \"id\": 9,
                      \"code\": \"in_game_name\",
                      \"value\": [
                        \"$name\"
                      ]
                    },
                    {
                      \"id\": 37,
                      \"code\": \"character\",
                      \"value\": [
                        \"Ash\"
                      ]
                    },
                    {
                      \"id\": 59,
                      \"code\": \"pereferd_plateform\",
                      \"value\": [
                        \"PC\"
                      ]
                    },
                    {
                      \"id\": 83,
                      \"code\": \"current_ranking\",
                      \"value\": [
                        \"Gold\"
                      ]
                    },
                    {
                      \"id\": 97,
                      \"code\": \"peek_ranking\",
                      \"value\": [
                        \"Gold\"
                      ]
                    },
                    {
                      \"id\": 140,
                      \"code\": \"monitor\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 173,
                      \"code\": \"mouse\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 204,
                      \"code\": \"controller\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 244,
                      \"code\": \"keyboard\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 275,
                      \"code\": \"headset\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 306,
                      \"code\": \"mousepad\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 337,
                      \"code\": \"DPI\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 361,
                      \"code\": \"In-game_Sensitivity\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 385,
                      \"code\": \"In-game_zoom_Sensitivity\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 416,
                      \"code\": \"Processor\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 440,
                      \"code\": \"Graphic_card\",
                      \"value\": [
                        null
                      ]
                    },
                    {
                      \"id\": 464,
                      \"code\": \"Motherboard\",
                      \"value\": [
                        null
                      ]
                    }
                  ]
                }" \

  printf "${env},${role},${name},${name}@${mail},${code}${phone}\n" >> ${output:-"data/members.csv"}
  printf "\033[1;33m>> env: ${env} - role: ${role} - email: ${name}@${mail} - phone: ${code}${phone} <<\033[0m\n\n"
}

for ((i = 0; i < num; ++i)); do
    run
done