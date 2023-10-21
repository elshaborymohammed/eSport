#username="super_customer@esports.com"
#password="abc@123"
username="admin"
password="admin"
domain="http://127.0.0.1:8081"

access_token=$(curl -X POST --location "$domain/auth/realms/master/protocol/openid-connect/token" \
                   -H "Content-Type: application/x-www-form-urlencoded" \
                   -d "username=$username&password=$password&client_id=admin-cli&grant_type=password" \
                   | jq .access_token | sed -e 's/\"//g')


#curl "$domain/uaa/profile/filter" \
#  -H 'Accept: application/json' \
#  -H 'Content-Type: application/json' \
#  -H "Authorization: Bearer $access_token" \
#  --data-raw '{"filters":[{"columnName":"name","columnValue":"","operator":"equals"}],"pageNo":0,"pageLength":10,"sorting":[{"sortName":"id","sortType":"DESC","sortColumnType":"string"}]}' \
#  --compressed
#
#
#curl "$domain/uaa/profile" \
#  -X 'PUT' \
#  -H 'Accept: application/json' \
#  -H 'Content-Type: application/json' \
#  -H "Authorization: Bearer $access_token" \
#  --data-raw '{"name":"Club Owner","nameAr":"مالك نادى","levelId":"e588b002-5510-4962-9c7b-eeb607664562","signUp":true,"authorities":["C_T_A_O","C_T_E_O","C_T_V_O","C_T_EAL_O","C_T_ARL_O","C_T_UAL_O","C_T_UAR_O","C_T_AR_O","C_T_MTA_O","C_T_DS_O","C_CL_V_O","C_CL_DS_O","C_CL_VMY_O","C_CL_EMY_O","C_CL_AS_O","C_CL_CAL_O","C_CL_EAL_O","C_CL_MP_O","C_CL_BL_O","C_CL_UBL_O","C_CL_MA_O"],"id":"f58be026-5b78-4b3f-b906-8f575ff7d4d9","isInvitationsEnabled":false}' \
#  --compressed
#
#
#
#
#curl "$domain/uaa/profile/480c96e0-d6f1-4799-9c0c-6cf228fe0171" \
#  -H 'Accept: application/json' \
#  -H 'Content-Type: application/json' \
#  -H "Authorization: Bearer $access_token" \
#  --compressed


club_owner_group_id=$(curl "$domain/auth/admin/realms/cust_esports.com/groups" \
  -X 'GET' \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $access_token" \
  --compressed | jq -c '.[] | select( .name == "Club Owner")' | jq .id | sed -e 's/\"//g')

curl -v "$domain/auth/admin/realms/cust_esports.com/groups/$club_owner_group_id/role-mappings/realm" \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $access_token"

curl "$domain/auth/admin/realms/cust_esports.com/groups/{id}/role-mappings/realm" \
  -X 'PUT' \
  -H 'Accept: application/json' \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $access_token" \
  --data-raw '{"name":"Club Owner","nameAr":"مالك نادى","levelId":"e588b002-5510-4962-9c7b-eeb607664562","signUp":true,"authorities":["C_T_A_O","C_T_E_O","C_T_V_O","C_T_EAL_O","C_T_ARL_O","C_T_UAL_O","C_T_UAR_O","C_T_AR_O","C_T_MTA_O","C_T_DS_O","C_CL_V_O","C_CL_DS_O","C_CL_VMY_O","C_CL_EMY_O","C_CL_AS_O","C_CL_CAL_O","C_CL_EAL_O","C_CL_MP_O","C_CL_BL_O","C_CL_UBL_O","C_CL_MA_O"],"id":"f58be026-5b78-4b3f-b906-8f575ff7d4d9","isInvitationsEnabled":false}' \
  --compressed
