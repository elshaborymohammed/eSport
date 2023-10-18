#!/bin/bash

while getopts e:r:n: flag
do
    case "${flag}" in
        e) env=${OPTARG};;
        r) role=${OPTARG};;
        n) num=${OPTARG};;
    esac
done

#declare -A domain=(
#  [dev]="https://dev.saudiesports.sa"
#  [qa]="https://qa.saudiesports.sa"
#  [localhost]="http://127.0.0.1:9080"
#)
#
#echo "Domain: ${domain[qa]}"

num=${num:-1}
env=${env:-"dev"}
domain="https://${env}.saudiesports.sa"
#env="local"
#domain="http://127.0.0.1:9080"
username="admin@saudiesports.sa"
password="abc123"

access_token=$(curl --silent -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                     -H "Content-Type: application/x-www-form-urlencoded" \
                     -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                     | jq .access_token | sed -e 's/\"//g')

#printf "\033[1;33m>> Get admin system id <<\033[0m\n"
admin=$(curl --silent -X GET --location "$domain/uaa/user/account-details" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      | jq .id | sed -e 's/\"//g')
#printf "\033[1;33m>> admin: $admin <<\033[0m\n"

function run() {
  entity="Person"
  role=${role:-"CLUB"}
  code="+20"
  phone="10$(sh random_number.sh -l 8)"
  name=$(sh random_english.sh -l 5)
  mail="mailinator.com"

  #printf "\033[1;33m>> Check existence <<\033[0m"
  curl --silent -X POST --location "$domain/team-club/v1/public/club-owner-request/is-exist" \
      -H "Content-Type: application/json" \
      -d "{
            \"entity\": \"${entity}\",
            \"propertyName\": \"${phone}\",
            \"propertyValue\": \"${code}${phone}\"
          }"


  #printf "\033[1;33m>> Send OTP <<\033[0m"
  curl --silent -X POST --location "$domain/team-club/v1/public/otp/send" \
      -H "Content-Type: application/json" \
      -d "{\"mobileNumber\": \"${code}${phone}\"}"


  #printf "\033[1;33m>> Signup <<\033[0m"
  #-w "\nhttp code: %{http_code} - content size %{size_download}\n" \
  request=$(curl --silent -X POST --location "$domain/team-club/v1/public/club-owner-request/signup" \
      -H "Content-Type: application/json" \
      -d "{
            \"otpCode\": \"1111\",
            \"signupData\": {
              \"countryCode\": \"${code}\",
              \"mobileNumber\": \"${phone}\",
              \"email\": \"${name}@${mail}\",
              \"clubIBAN\": \"SA$(sh random_number.sh -l 22)\",
              \"nationalId\": \"$(sh random_number.sh -l 9)\",
              \"crNumber\": \"$(sh random_number.sh -l 11)\",
              \"clubName\": \"${name} Club\",
              \"clubNameAr\": \"$(sh random_arabic.sh -l 5)\",
              \"name\": \"${name} ${role}\",
              \"password\": \"abc123\",
              \"gender\": \"MALE\",
              \"countryId\": 58,
              \"nationalIdFile\": \"file00007244\",
              \"clubLogo\": \"file00007246\",
              \"crFile\": \"file00007247\",
              \"crEndDate\": \"1769173492000\",
              \"clubIBANFile\": \"file00007248\",
              \"agreeTerms\": true
            }
          }"\
    | jq .systemId | sed -e 's/\"//g')

  #printf "\033[1;33m>> Re-assign Request <<\033[0m\n"
  curl --silent -X PATCH --location "$domain/team-club/v1/assigned_request/$request/reassign" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      -d "{\"userId\": \"$admin\"}" > /dev/null

  #printf "\n\033[1;33m>> Approve Request <<\033[0m\n"
  curl --silent -X PATCH --location "$domain/team-club/v1/assigned_request/$request" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      -d "{\"status\": \"APPROVED\"}" 1> /dev/null


  printf "${env},${role},${name},${name}@${mail},${code}${phone}\n" >> members.csv
  printf "\033[1;33m>> env: ${env} - role: ${role} - email: ${name}@${mail} - phone: ${code}${phone} - request: ${request}<<\033[0m\n"
}

for ((i = 0; i < num; ++i)); do
    run
done

#kubectl -n esport-dev logs -f --tail 500 esport-dev-team-club-58d65fb954-kqnm9