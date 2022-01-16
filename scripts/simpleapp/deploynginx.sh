kubectl create deployment nginx-server \
    --image=eu.gcr.io/hsbc-867330-ecmwf-dev/nginx:latest

kubectl expose deployment nginx-server \
    --type ClusterIP --port 8080 --target-port 80