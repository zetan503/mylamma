#!/bin/bash

mkdir -p certs

# Set the output file names
CERT_FILE="certs/open-webui.crt"
KEY_FILE="certs/open-webui.key"

# Generate the private key
openssl genrsa -out $KEY_FILE 2048

# Generate the certificate signing request (CSR)
openssl req -new -key $KEY_FILE -out certs/open-webui.csr.pem -subj "/C=US/ST=OR/L=Portland/O=Open-WebUI/CN=open-webui"

# Generate the self-signed certificate
openssl x509 -req -in certs/open-webui.csr.pem -signkey $KEY_FILE -out $CERT_FILE -days 365

echo "Self-signed certificate generated:"
echo "Cert file: $CERT_FILE"
echo "Key file: $KEY_FILE"

