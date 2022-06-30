#!/bin/bash

docker rm keycloak-testing-container || true

cd /Users/anbu/Documents/Projects/keycloaktraining/build_keycloak

docker run \
   -p 8080:8080 \
   --name keycloak-testing-container \
   -e KEYCLOAK_ADMIN=admin \
   -e KEYCLOAK_ADMIN_PASSWORD=admin \
   -e JAVA_OPTS=-Dkeycloak.profile=preview \
   -v /Users/anbu/Documents/Projects/keycloaktraining/build_keycloak/src/main/resources/theme/keycloaktraining:/opt/keycloak/themes/keycloaktraining:rw \
   -it quay.io/keycloak/keycloak:18.0.0 \
   start-dev
