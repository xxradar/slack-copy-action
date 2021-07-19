#!/bin/bash 
echo dadadada >test.txt
echo "This is the slack token: --" $SLACK_TOKEN "--"
curl -F file='@test.txt'  \
     -F "initial_comment=File upload demo" \
     -F channels=alerts \
     -H "Authorization: Bearer "$SLACK_TOKEN \
      https://slack.com/api/files.upload
