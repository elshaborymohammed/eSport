#!/bin/bash

while getopts e:r:u:p:i: flag
do
    case "${flag}" in
        e) env=${OPTARG};;
        r) role=${OPTARG};;
        u) username=${OPTARG};;
        p) password=${OPTARG};;
        i) request=${OPTARG};;
    esac
done

env=${env:-"dev"}
username=${username:-"admin@saudiesports.sa"}
password=${password:-"abc123"}
request=${request}
domain=

if [ "$env" = "local" ]; then
  domain="http://127.0.0.1:9080"
else
  domain="https://${env}.saudiesports.sa"
fi
printf "\033[1;33m>> env: $env - domain: $domain <<\033[0m\n"


access_token=$(curl --silent -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                     -H "Content-Type: application/x-www-form-urlencoded" \
                     -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                     | jq .access_token | sed -e 's/\"//g')

admin=$(curl --silent -X GET --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/userinfo" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      | jq .sub | sed -e 's/\"//g')

function reassign(){
  printf "\033[1;33m>> Re-assign Request <<\033[0m\n"
  curl -X PATCH --location "$domain/team-club/v1/assigned_request/$request/reassign" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      -d "{\"userId\": \"$admin\"}"
#      > /dev/null
}

function approve(){
  printf "\n\033[1;33m>> Approve Request <<\033[0m\n"
  curl -X PATCH --location "$domain/team-club/v1/assigned_request/$request" \
      -H "Content-Type: application/json" \
      -H "Authorization: Bearer $access_token" \
      -d "{\"status\": \"APPROVED\"}"
#      1> /dev/null
}

log(){
    # shellcheck disable=SC2059
    printf "\033[1;33m>> env: ${env} - role: ${role} - request: ${request}<<\033[0m\n"
}

reassign
approve
log