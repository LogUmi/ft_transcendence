#!/bin/bash

docker cp transcendence_front:/data/caddy/pki/authorities/local/root.crt ./caddy-local-root.crt
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ./caddy-local-root.crt