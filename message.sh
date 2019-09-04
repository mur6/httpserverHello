#!/bin/sh
socat \
    -v -d -d \
    TCP-LISTEN:$HTTP_PORT,crlf,reuseaddr,fork \
    SYSTEM:"
        echo HTTP/1.1 200 OK;
        echo Content-Type\: text/plain;
        echo;
        echo \"Server: \$SOCAT_SOCKADDR:\$SOCAT_SOCKPORT\";
        echo \"Client: \$SOCAT_PEERADDR:\$SOCAT_PEERPORT\";
    "
