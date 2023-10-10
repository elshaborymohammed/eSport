apisixKey="edd1c9f034335f136f87ad84b625c8f1"
apisixBaseUrl="http://127.0.0.1:9180"

curl -v \
"$apisixBaseUrl/apisix/admin/upstreams" \
-H "X-API-KEY: $apisixKey"

curl -v \
"$apisixBaseUrl/apisix/admin/routes" \
-H "X-API-KEY: $apisixKey"