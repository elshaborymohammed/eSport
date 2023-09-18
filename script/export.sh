#!/bin/bash

domain="localhost:8002"
#domain= "https://$env.saudiesports.sa"
env="qa"
username="lshabory@gmail.com"
password="abc@123"
filter=0
echo "ENV=$env"

printf "\033[1;33m>> Login as an admin <<\033[0m\n"
access_token=$(curl -X POST --location "https://$env.saudiesports.sa/auth/realms/cust_esports.com/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=WEB&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')
printf "\n\n"

reports=('clubs' 'blockedClubs' 'members' 'blockedMembers' 'teams' 'archivedTeams' 'clans' 'archivedClans')
filters=(
  #clubs
  '[{"columnName":"query","columnValue":"q"},{"columnName":"clubName","columnValue":"q"},{"columnName":"clubNameAr","columnValue":"q"},{"columnName":"ownerName","columnValue":"q"},{"columnName":"clubOwnerEmail","columnValue":"q"},{"columnName":"ownerMobileNumber","columnValue":"0109992512"},{"columnName":"nationalId","columnValue":"q"},{"columnName":"crNumber","columnValue":"q"},{"columnName":"iban","columnValue":"q"}]'
  #blockedClubs
  '[{"columnName":"query","columnValue":"q"},{"columnName":"clubName","columnValue":"q"},{"columnName":"clubNameAr","columnValue":"q"},{"columnName":"ownerName","columnValue":"q"},{"columnName":"clubOwnerEmail","columnValue":"q"},{"columnName":"ownerMobileNumber","columnValue":"1"},{"columnName":"nationalId","columnValue":"q"},{"columnName":"crNumber","columnValue":"q"},{"columnName":"iban","columnValue":"q"},{"columnName":"blockDateStart","columnValue":1693601999999},{"columnName":"blockDateEnd","columnValue":1695070799999}]'
  #memberso
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"memberName","columnValue":"q","columnValues":null,"operator":"equals"},{"columnName":"email","columnValue":"q","columnValues":null,"operator":"equals"},{"columnName":"mobileNumber","columnValue":"01019992512","columnValues":null,"operator":"equals"},{"columnName":"countryIdList","columnValue":null,"columnValues":[2,10],"operator":"equals"},{"columnName":"genderList","columnValue":null,"columnValues":["MALE","FEMALE"],"operator":"equals"},{"columnName":"roleListFilter","columnValue":null,"columnValues":["PLAYER","COACH"],"operator":"equals"},{"columnName":"teamName","columnValue":"q","columnValues":null,"operator":"equals"},{"columnName":"clubName","columnValue":"q","columnValues":null,"operator":"equals"}]'
  #blockedMembers
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"memberName","columnValue":"q","columnValues":null,"operator":"equals"},{"columnName":"email","columnValue":"q","columnValues":null,"operator":"equals"},{"columnName":"mobileNumber","columnValue":"010199926512","columnValues":null,"operator":"equals"},{"columnName":"countryIdList","columnValue":null,"columnValues":[2,3],"operator":"equals"},{"columnName":"genderList","columnValue":null,"columnValues":["MALE","FEMALE"],"operator":"equals"},{"columnName":"roleListFilter","columnValue":null,"columnValues":["PLAYER","COACH","REFEREE"],"operator":"equals"},{"columnName":"blockDateStart","columnValue":1693601999999,"columnValues":null,"operator":"equals"},{"columnName":"blockDateEnd","columnValue":1695070799999,"columnValues":null,"operator":"equals"},{"columnName":"memberName","columnValue":"q"},{"columnName":"email","columnValue":"q"},{"columnName":"mobileNumber","columnValue":"010199926512"},{"columnName":"countryIdList","columnValue":null},{"columnName":"genderList","columnValue":null},{"columnName":"roleListFilter","columnValue":null},{"columnName":"blockDateStart","columnValue":1693601999999},{"columnName":"blockDateEnd","columnValue":1695070799999}]'
  #teams
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"teamName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"memberName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"clubName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"gameId","operator":"equals","columnValue":1,"columnValues":null}]'
  #archivedTeams
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"memberName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"clubName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"gameId","operator":"equals","columnValue":1,"columnValues":null}]'
  #clans
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"teamName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"memberName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"gameId","operator":"equals","columnValue":1,"columnValues":null}]'
  #archivedClans
  '[{"columnName":"query","columnValue":"q","operator":"equals"},{"columnName":"teamName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"memberName","operator":"equals","columnValue":"q","columnValues":null},{"columnName":"gameId","operator":"equals","columnValue":5,"columnValues":null}]'
)

printf "\033[1;33m>> With no filter <<\033[0m\n"
for (( i=0; i<${#reports[@]}; i++ ))
do
    printf "\033[1;33m>> Export %s <<\033[0m\n", "${reports[$i]}";
    echo "{\"columns\":[],\"filters\":[],\"locale\":\"en\",\"timeZone\":null}" | \
      http -h POST "$domain/report/v1/exports/${reports[$i]}" \
            "Content-Type: application/json" \
            "Authorization: Bearer $access_token" \
           ;
    printf "\n\n";
done

printf "\033[1;33m>> With all filters <<\033[0m\n"
for (( i=0; i<${#reports[@]}; i++ ))
do
    printf "\033[1;33m>> Export %s <<\033[0m\n", "${reports[$i]}";
    echo "{\"columns\":[],\"filters\":${filters[$i]},\"locale\":\"en\",\"timeZone\":null}" | \
      http -h POST "$domain/report/v1/exports/${reports[$i]}" \
            "Content-Type: application/json" \
            "Authorization: Bearer $access_token" \
           ;
    printf "\n\n";
done


##${filters[$i]}
#for (( i=0; i<${#reports[@]}; i++ ))
#do
#    printf "\033[1;33m>> Export %s <<\033[0m\n", "${reports[$i]}";
#    #        --output "$HOME/Downloads/${reports[$i]}".xlsx \
#    curl -w "URL: %{url}\nhttp code: %{http_code}\ncontent size %{size_download}" \
#        -X POST --location "$domain/report/v1/exports/${reports[$i]}" \
#        -H "Authorization: Bearer $access_token" \
#        -H "Content-Type: application/json" \
#        -d "{
#              \"columns\": [],
#              \"filters\": ${filters[$i]},
#              \"locale\": \"en\",
#              \"timeZone\": null
#            }";
#    printf "\n\n";
#done


#echo $((filter == 0 ? "value_if_true" : "value_if_false"))