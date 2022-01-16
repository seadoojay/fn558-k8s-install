gcloud compute networks create hsbc-867330-ecmwf-dev-private-network \
    --project hsbc-867330-ecmwf-dev \
    --subnet-mode custom

gcloud compute networks subnets create gke-subnet \
    --project hsbc-867330-ecmwf-dev \
    --region europe-west2 \
    --network hsbc-867330-ecmwf-dev-private-network \
    --range 192.168.0.0/20 \
    --secondary-range my-pods=10.4.0.0/14,my-services=10.0.32.0/20 \
    --enable-private-ip-google-access

gcloud container clusters create gke-private-cluster \
    --project hsbc-867330-ecmwf-dev \
    --num-nodes=1 \
    --region europe-west2 \
    --node-locations europe-west2-c \
    --enable-master-authorized-networks \
    --network hsbc-867330-ecmwf-dev-private-network \
    --subnetwork gke-subnet \
    --cluster-secondary-range-name my-pods \
    --services-secondary-range-name my-services \
    --enable-private-nodes \
    --enable-ip-alias \
    --master-ipv4-cidr 172.16.0.16/28 \
    --no-enable-basic-auth \
    --no-issue-client-certificate \
    --machine-type e2-medium