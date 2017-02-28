#!/bin/bash

# First argument: Client

source vars
export EASY_RSA="${EASY_RSA:-.}"
"$EASY_RSA/pkitool" --batch $*

cat base.conf \
    <(echo -e '<ca>') \
    ${KEY_DIR}/ca.crt \
    <(echo -e '</ca>\n<cert>') \
    ${KEY_DIR}/${1}.crt \
    <(echo -e '</cert>\n<key>') \
    ${KEY_DIR}/${1}.key \
    <(echo -e '</key>\n<tls-auth>') \
    ${KEY_DIR}/ta.key \
    <(echo -e '</tls-auth>') \
    > clients/${1}.conf

#if the client has already existed, you will see an error because it is already existed in index.txt.
#remove the line from index.txt will fix it

