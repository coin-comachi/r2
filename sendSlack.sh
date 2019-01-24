#!/bin/bash

URL='https://hooks.slack.com/services/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'
CHANNEL='#arbitrage'
BOTNAME='watch_bot'
EMOJI=':robot_face:'

MESSAGE="$1"

payload="payload={
    \"channel\": \"${CHANNEL}\",
    \"username\": \"${BOTNAME}\",
    \"icon_emoji\": \"${EMOJI}\",
    \"text\": \"${MESSAGE}\"
}"

curl -s -S -X POST --data-urlencode "${payload}" ${URL} > /dev/null

