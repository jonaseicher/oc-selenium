# OpenShift-Selenium

This Repo contains Dockerfiles to build OpenShift-ready images of the Selenium Grid from SeleniumHQ/selenium.

## Repo Content

All the images are based on the SeleniumHQ images and enhance them by fixing file/folder permissions for OpenShift as well as getting rid of sudo commands in the scripts (which also won't work on OpenShift)
 
 ## Run locally

You can also run a grid locally with docker-compose up --build

## OpenShift Templates

I added some OpenShift deploymentconfig templates as a reference. The main thing here is to mount a /dev/shm volume in the chrome container to avoid page crashes (https://github.com/SeleniumHQ/docker-selenium/issues/392)

## Fix-permissions script
For permission fixing, I am reusing the awesome fix-permissions.sh from these guys:
https://github.com/sclorg/s2i-base-container/blob/master/bin/fix-permissions