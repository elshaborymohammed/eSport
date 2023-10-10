apisixKey="edd1c9f034335f136f87ad84b625c8f1"
apisixBaseUrl="http://127.0.0.1:9180"
reportHost="scheduler.esport-dev.svc.cluster.local"
reportPort=80

#-w "\nhttp code: %{http_code} - http code: %{http_code} - content size %{size_download}\n"

curl -v \
"$apisixBaseUrl/apisix/admin/upstreams/00000000000000000495" \
-H "X-API-KEY: $apisixKey" -X PUT -d "
{
  \"nodes\": [
    {
      \"host\": \"$reportHost\",
      \"port\": $reportPort,
      \"weight\": 1
    }
  ],
  \"type\": \"roundrobin\",
  \"scheme\": \"http\",
  \"pass_host\": \"pass\",
  \"name\": \"scheduler upstream\"
}"

echo "------------------------------------------------------------------------------------------------------------------------------------------------"



curl -v \
"$apisixBaseUrl/apisix/admin/routes/00000000000000000553" \
-H "X-API-KEY: $apisixKey" -X PUT -d '
{
  "uri": "/scheduler/*",
  "name": "scheduler route",
  "methods": [
    "GET",
    "POST",
    "PUT",
    "DELETE",
    "PATCH",
    "HEAD",
    "OPTIONS",
    "CONNECT",
    "TRACE"
  ],
  "plugins": {
    "jwt-auth": {
      "disable": false
    }
  },
  "upstream_id": "00000000000000000495",
  "status": 1
}'


curl -v \
"$apisixBaseUrl/apisix/admin/upstreams" \
-H "X-API-KEY: $apisixKey"

curl -v \
"$apisixBaseUrl/apisix/admin/routes" \
-H "X-API-KEY: $apisixKey"