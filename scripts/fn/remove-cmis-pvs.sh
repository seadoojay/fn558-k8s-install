#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'

kubectl delete -f cmis-cfgstore.yaml
kubectl delete -f cmis-cfgstore-pv.yaml

kubectl delete -f cmis-logstore.yaml
kubectl delete -f cmis-logstore-pv.yaml