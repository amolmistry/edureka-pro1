#!/usr/bin/env bash
JENKINS_URL="http://34.228.15.103:8080"
USER="admin"
#TOKEN="264aa7abf45d4557accfc27e76f91856"
TOKEN="Shikhar*15"

CRUMB=$(curl -s -u "$USER:$TOKEN" \
  "$JENKINS_URL/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)")

curl -X POST -u "$USER:$TOKEN" -H "$CRUMB" \
  -F "jenkinsfile=<Jenkinsfile" \
  "$JENKINS_URL/pipeline-model-converter/validate"
