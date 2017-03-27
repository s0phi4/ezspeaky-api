#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "therapy_id": "'"${THERAPY_ID}"'",
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'"
    }
  }'


echo
