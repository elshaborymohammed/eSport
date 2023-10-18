#!/usr/bin/env bash

env=${env:-"dev"}
domain="https://${env}.saudiesports.sa"
username="admin@saudiesports.sa"
password="abc123"

#https://dev.saudiesports.sa/auth/realms/cust_esports.com/protocol/openid-connect/token
access_token=$(curl -X POST --location "$domain/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')

printf $access_token