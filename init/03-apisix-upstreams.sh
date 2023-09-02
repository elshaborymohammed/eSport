curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" "http://127.0.0.1:9180/apisix/admin/upstreams/customer" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '

{
  "nodes": [
    {
      "host": "host.docker.internal",
      "port": 8052,
      "weight": 1
    }
  ],
  "timeout": {
    "connect": 1000,
    "send": 1000,
    "read": 1000
  },
  "type": "roundrobin",
  "scheme": "http",
  "pass_host": "pass",
  "name": "customer upstream",
  "keepalive_pool": {
    "idle_timeout": 1000,
    "requests": 1000,
    "size": 320
  }
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" "http://127.0.0.1:9180/apisix/admin/upstreams/user" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '

{
  "nodes": [
    {
      "host": "host.docker.internal",
      "port": 6060,
      "weight": 1
    }
  ],
  "timeout": {
    "connect": 1000,
    "send": 1000,
    "read": 1000
  },
  "type": "roundrobin",
  "scheme": "http",
  "pass_host": "pass",
  "name": "user upstream",
  "keepalive_pool": {
    "idle_timeout": 1000,
    "requests": 1000,
    "size": 320
  }
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" "http://127.0.0.1:9180/apisix/admin/upstreams/teamClub" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '

{
  "nodes": [
    {
      "host": "host.docker.internal",
      "port": 8001,
      "weight": 1
    }
  ],
  "timeout": {
    "connect": 1000,
    "send": 1000,
    "read": 1000
  },
  "type": "roundrobin",
  "scheme": "http",
  "pass_host": "pass",
  "name": "team-club upstream",
  "keepalive_pool": {
    "idle_timeout": 1000,
    "requests": 1000,
    "size": 320
  }
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n" "http://127.0.0.1:9180/apisix/admin/upstreams/report" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '

{
  "nodes": [
    {
      "host": "host.docker.internal",
      "port": 8002,
      "weight": 1
    }
  ],
  "timeout": {
    "connect": 1000,
    "send": 1000,
    "read": 1000
  },
  "type": "roundrobin",
  "scheme": "http",
  "pass_host": "pass",
  "name": "report upstream",
  "keepalive_pool": {
    "idle_timeout": 1000,
    "requests": 1000,
    "size": 320
  }
}'
