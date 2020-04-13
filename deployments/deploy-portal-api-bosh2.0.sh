#!/bin/bash
PORTAL_DEPLOYMENT_NAME='paasta-portal-api'


bosh -d ${PORTAL_DEPLOYMENT_NAME} deploy paasta-portal-bosh2.0.yml --no-redact\
   -l manifests/portal-api-vars.yml \
   -o operations/use-public-network.yml \
   -o manifests/rename-network-and-deployment.yml \
   -v portal_deployment_name=${PORTAL_DEPLOYMENT_NAME}
