#!/bin/bash

while getopts n:e:o: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
        e) env=${OPTARG};;
        o) output=${OPTARG};;
    esac
done
num=${num:-1}
env=${env:-"qa"}
username=${username:-"pbycelshabory@mailinator.com"}
password=${password:-"abc123"}

domain=
if [ "$env" = "local" ]; then
  domain="http://127.0.0.1:9080"
else
  domain="https://${env}.saudiesports.sa"
fi

access_token=$(curl -k --silent -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                     -H "Content-Type: application/x-www-form-urlencoded" \
                     -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                     | jq .access_token | sed -e 's/\"//g')
                     
curl -k -v -X POST --location "$domain/team-club/v1/teams" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $access_token" \
    -d "{
          \"name\": \"$(sh ../utils/random_english.sh -l 5) ClubTeam\",
          \"nameAr\": \"$(sh ../utils/random_arabic.sh -l 5)\",
          \"about\": \"NpqQj\",
          \"logo\": \"esports/public/team.png\",
          \"publicProfile\": true,
          \"gameId\": 1,
          \"invitations\": [{\"email\": \"mebmelshabory@mailinator.com\", \"role\": \"PLAYER\"}]
        }"