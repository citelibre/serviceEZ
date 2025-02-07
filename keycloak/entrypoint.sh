#!/bin/bash

export WAIT_HOSTS=$DB_ADDR:$DB_PORT
export WAIT_HOSTS_TIMEOUT=600
export WAIT_SLEEP_INTERVAL=30
export WAIT_HOST_CONNECT_TIMEOUT=30


protocol=${PROTOCOL:-http}
url_keycloak=${URL_KEYCLOAK}

if [[ "$PROTOCOL" == "http" ]]; then
    http_enabled="true"
else
    http_enabled="false"
    url_keycloak="${protocol}://${url_keycloak}"
fi

if echo "$url_keycloak" | grep -qE "localhost|127\.0\.0\.1"; then
    url_keycloak="localhost"
fi

/tmp/wait 
/opt/keycloak/bin/kc.sh \
    start-dev \
    --proxy-headers forwarded --hostname-strict=false --http-enabled=${http_enabled} \
    --hostname=${url_keycloak}
