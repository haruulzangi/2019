#! /bin/sh
while sleep 10; do
    echo $BASE_URL;
    phantomjs --ignore-ssl-errors=true --local-to-remote-url-access=true --web-security=false --ssl-protocol=any bot2.js || true;
done
