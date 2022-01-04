SECRETNAME="ecm-reg-token"

kubectl create secret docker-registry $SECRETNAME \
  --docker-server=https://eu.gcr.io/hsbc-867330-ecmwf-dev \
  --docker-username=_json_key \
  --docker-email=aps-image-builder@hsbc-867330-ecmwf-dev.iam.gserviceaccount.com \
  --docker-password="$(cat ../pg/aps-builder.json)"