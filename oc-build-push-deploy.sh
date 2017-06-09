#!/bin/bash
APP=${1?-Error, requires argument appName}
REGISTRY=<your.oc.docker.registry>
SPACE=<your.oc.namespace>

docker build -t $REGISTRY/$SPACE/$APP .
docker tag $REGISTRY/$SPACE/$APP $REGISTRY/$SPACE/$APP
docker push $REGISTRY/$SPACE/$APP
oc new-app $REGISTRY/devops-infra/$APP --name $APP


