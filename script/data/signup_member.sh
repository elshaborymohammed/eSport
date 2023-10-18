#!/bin/bash

while getopts n:e:r:u:p: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
        e) env=${OPTARG};;
        r) role=${OPTARG};;
        u) username=${OPTARG};;
        p) password=${OPTARG};;
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
  phone="10$(sh random_number.sh -l 8)"
  name=$(sh random_english.sh -l 5)
  mail="mailinator.com"

#  printf "\033[1;33m>> Check existence <<\033[0m\n"
  curl --silent -X POST --location "$domain/team-club/v1/public/club-owner-request/is-exist" \
      -H "Content-Type: application/json" \
      -d "{
            \"entity\": \"${entity}\",
            \"propertyName\": \"${phone}\",
            \"propertyValue\": \"${code}${phone}\"
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
              \"name\": \"${name} ${role}\",
              \"email\": \"${name}@${mail}\",
              \"countryCode\": \"${code}\",
              \"mobileNumber\": \"${code}${phone}\",
              \"gender\": \"MALE\",
              \"dateOfBirth\": \"\",
              \"countryId\": null,
              \"password\": \"abc123\",
              \"profileType\": \"${role}\",
              \"profileName\": \"\"
            }
          }"

  printf "${env},${role},${name},${name}@${mail},${code}${phone}\n" >> members.csv
  printf "\033[1;33m>> env: ${env} - role: ${role} - email: ${name}@${mail} - phone: ${code}${phone} <<\033[0m\n\n"
}

for ((i = 0; i < num; ++i)); do
    run
done