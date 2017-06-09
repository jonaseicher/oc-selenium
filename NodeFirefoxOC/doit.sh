#!/bin/bash
APP=${1?-Error, requires argument appName}

docker build -t registry.apps.os-test.adp.allianz/devops-infra/$APP .
docker tag registry.apps.os-test.adp.allianz/devops-infra/$APP 1.246.55.83:5000/devops-infra/$APP
docker push registry.apps.os-test.adp.allianz/devops-infra/$APP
oc new-app 1.246.55.83:5000/devops-infra/$APP --name $APP


