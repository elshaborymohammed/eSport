curl "http://127.0.0.1:9180/apisix/admin/upstreams/mail" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '

{
  "nodes": [
    {
      "host": "host.docker.internal",
      "port": 8025,
      "weight": 1
    }
  ],
  "timeout": {
    "connect": 180,
    "send": 6,
    "read": 6
  },
  "type": "roundrobin",
  "scheme": "http",
  "pass_host": "pass",
  "name": "Mail Server upstream",
  "keepalive_pool": {
    "idle_timeout": 60,
    "requests": 1000,
    "size": 320
  }
}'

curl "http://127.0.0.1:9180/apisix/admin/routes/mail" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uris": [
    "/mail/*"
  ],
  "name": "Mail Server",
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
  "upstream_id": "mail",
  "status": 1
}'