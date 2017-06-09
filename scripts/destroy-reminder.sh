API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE # \
  --header "Authorization: Token token=$TOKEN"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reminders/2"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE  \
  --header "Authorization: Token token=BAhJIiVjYzdmNTkxNzZiMjQzYWM0NzBiYWYzOGZjZTRhMGRjYwY6BkVG--44f04efa1b649cbcabb24f70a39359bb81d64ca2"
