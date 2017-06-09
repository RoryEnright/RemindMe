#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/examples"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjMDkxZDQxMDgyYmMyNDFlNTQ3Njg2ZWQ0YjVmM2U4YwY6BkVG--5cbae12a3c727b8a5ea1e19f8f9cc9922db67a72" \
  --data '{
    "reminder": {
      "content": "This is a test 2",
      "day": "2017-06-08",
      "when": "12:00"
      }
  }'

  "day": "2017-06-08",
  "when": "12:00"
"user_id": "1"
