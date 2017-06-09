#!/bin/bash
APP=${1?-Error, requires argument appName}

oc delete dc $APP -n devops-infra
oc delete service $APP
oc delete is $APP

