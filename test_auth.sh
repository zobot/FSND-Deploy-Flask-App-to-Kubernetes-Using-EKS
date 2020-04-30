#!/bin/bash
export TOKEN=`curl -d '{"email":"fakeemail@gmail.com","password":"fakepassword"}' -H "Content-Type: application/json" -X POST localhost:80/auth  | jq -r '.token'`
curl --request GET 'http://127.0.0.1:80/contents' -H "Authorization: Bearer ${TOKEN}" | jq .
