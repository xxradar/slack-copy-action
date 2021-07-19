#!/bin/bash 
echo dadadada >test.txt
curl -F file='@test.txt'  \
     -F "initial_comment=File upload demo" \
     -F channels=alerts \
     -H "Authorization: Bearer "$SLACK_TOKEN \
      https://slack.com/api/files.upload
