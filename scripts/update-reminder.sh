API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "reminder": {
      "content": ""string
    }
  }'


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/1"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjYzdmNTkxNzZiMjQzYWM0NzBiYWYzOGZjZTRhMGRjYwY6BkVG--44f04efa1b649cbcabb24f70a39359bb81d64ca2" \
  --data '{
    "reminder": {
      "content": "Update-reminder test!",
      "day": "2017-06-08",
      "when": "12:00"
      }
  }'
