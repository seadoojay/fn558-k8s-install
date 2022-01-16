kubectl create secret tls ingress-tls-secret \
    --namespace default \
    --key jasonghause-ingress-tls.key \
    --cert jasonghause-ingress-tls.crt