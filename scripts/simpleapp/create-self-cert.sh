echo "## Staring to create self-signed certificate ##"

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -out jasonghause-ingress-tls.crt \
    -keyout jasonghause-ingress-tls.key \
    -subj "/CN=demo.jasonghause.com/O=jasonghause-ingress-tls"

#openssl pkcs12 -inkey key.pem -in certificate.pem -export -out jasonghause.p12

