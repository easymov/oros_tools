#!/bin/sh

openssl genrsa -out oros.key 2048
openssl req -new -sha256 -key oros.key -out oros.csr
openssl req -x509 -sha256 -days 365 -key oros.key -in oros.csr -out oros.crt
openssl req -in oros.csr -text -noout | grep -i "Signature.*SHA256" && echo "All is well" || echo "This certificate will stop working in 2017! You must update OpenSSL to generate a widely-compatible certificate"