#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/1" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=BAhJIiVjOTFhZmRiNTJmMTY3ZDg2MmIyZDFiYzk0NDUyZDhhYgY6BkVG--641d9fb2bc3fa4b921b6e6d1734920336e058148" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "qwe",
      "new": "qweqwe"
    }
  }'

echo
