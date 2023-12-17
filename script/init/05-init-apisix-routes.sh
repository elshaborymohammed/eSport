curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/auth" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/auth/*",
  "name": "auth route",
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
  "upstream_id": "auth",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/kafka_ui" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/kafka_ui/*",
  "name": "kafka ui route",
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
  "upstream_id": "kafka_ui",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/apisix" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/apisix/*",
  "name": "apisix route",
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
  "upstream_id": "apisix",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/mail" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/mail",
  "name": "mail route",
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


curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/customer" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/customer/*",
  "name": "customer APIs route",
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
  "upstream_id": "customer",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/userPublic" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uris": [
    "/uaa/public/*",
    "/uaa/public/profile-type/filter"
  ],
  "name": "user public APIs route",
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
  "upstream_id": "user",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/user" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/uaa/*",
  "name": "user route",
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
  "upstream_id": "user",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/teamClubPublic" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/team-club/v1/public/*",
  "name": "team-club public APIs route",
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
  "upstream_id": "team_club",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/teamClub" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/team-club/*",
  "name": "team club route",
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
  "upstream_id": "team_club",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/report" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/report/*",
  "name": "report route",
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
  "upstream_id": "report",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/notification" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/notify/*",
  "name": "notification route",
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
  "upstream_id": "notification",
  "status": 1
}'

curl -w "\nhttp code: %{http_code} - content size %{size_download}\n"  "http://127.0.0.1:9180/apisix/admin/routes/resource" -H "X-API-KEY: edd1c9f034335f136f87ad84b625c8f1" -X PUT -d '
{
  "uri": "/resource/*",
  "name": "resource route",
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
  "upstream_id": "resource",
  "status": 1
}'