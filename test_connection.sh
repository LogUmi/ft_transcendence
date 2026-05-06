#!/bin/bash

echo "HTTP redirect:"
curl -k -I http://localhost:8080

echo
echo "HTTPS frontend:"
curl -k -I https://localhost:8443

echo
echo "HTTP health through redirect:"
curl -k -L http://localhost:8080/api/health

echo
echo
echo "HTTPS health:"
curl -k https://localhost:8443/api/health
echo
