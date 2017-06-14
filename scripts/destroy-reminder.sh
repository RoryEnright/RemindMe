API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE # \
  --header "Authorization: Token token=$TOKEN"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/40"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE  \
  --header "Authorization: Token token=BAhJIiU1MjZlY2RmOTQ0Yzc1ZDg2MThhNTE4Mjk4ZGJlZjY1NwY6BkVG--00e736c028b71a683c2b0fbcc983138a905cec80"
