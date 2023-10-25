#!/usr/bin/env sh

api_key='edd1c9f034335f136f87ad84b625c8f1'
domain='http://127.0.0.1:9180/apisix/admin/upstreams'
upstreams=('auth' 'mail' 'apisix' 'kafka_ui' 'customer' 'user' 'team_club' 'report' 'notification')
ports=(8081 8025 9000 29091 8052 6060 8001 8002 8888)


for (( i=0; i<${#upstreams[@]}; i++ ))
do
#    printf "\033[1;32m>> Export %s <<\033[0m\n", "${reports[$i]}";
    curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" \
    -X PUT --location "$domain/${upstreams[$i]}" \
    -H "X-API-KEY: $api_key" \
    -d "{
          \"nodes\": [
            {
              \"host\": \"host.docker.internal\",
              \"port\": ${ports[$i]},
              \"weight\": 1
            }
          ],
          \"timeout\": {
            \"connect\": 1000,
            \"send\": 1000,
            \"read\": 1000
          },
          \"type\": \"roundrobin\",
          \"scheme\": \"http\",
          \"pass_host\": \"pass\",
          \"name\": \"${upstreams[$i]} upstream\",
          \"keepalive_pool\": {
            \"idle_timeout\": 1000,
            \"requests\": 1000,
            \"size\": 320
          }
        }"
#    printf "\n\n";
done