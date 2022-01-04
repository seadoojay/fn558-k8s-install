gcloud beta filestore instances create fn-dev-data --zone=europe-west2-c --tier=BASIC_HDD --file-share=name="fnvol",capacity=1TB --network=name="ecm-dev-network"
#gcloud beta filestore instances create fn-dev-data \
#	--project=hsbc-867330-ecmwf-dev \
#	--zone=europe-west2-c \
#	--tier=BASIC_HDD \
#	--network=name="default" \
#	--flags-file=nfs-export-options.json


#gcloud beta filestore instances create render1 \
#  --project=myproject \
#  --zone=us-central1-c \
##  --tier=BASIC_HDD \
#  --network=name="default",reserved-ip-range="10.0.7.0/29"
#  --flags-file=nfs-export-options.json
