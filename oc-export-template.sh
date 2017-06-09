#!/bin/bash
APP=${1?-Error, requires argument appName}

oc export dc --as-template=$APP-template $APP > $APP-dc-template.yaml

