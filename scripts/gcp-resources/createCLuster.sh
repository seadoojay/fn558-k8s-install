gcloud container clusters create filenet-cluster --num-nodes=1 \
    --zone europe-west2-c \
    --node-locations europe-west2-c \
    --network ecm-dev-network
