#!/bin/bash
export EXTERNAL_IP=a41898a1ae9a84c339d56d83b2a50724-417565993.us-east-2.elb.amazonaws.com
export TOKEN=`curl -d '{"email":"fakeemail@gmail.com","password":"fakepassword"}' -H "Content-Type: application/json" -X POST $EXTERNAL_IP/auth  | jq -r '.token'`
curl --request GET "${EXTERNAL_IP}/contents" -H "Authorization: Bearer ${TOKEN}" | jq
