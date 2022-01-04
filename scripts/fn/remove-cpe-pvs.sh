#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'

kubectl delete -f cpe-cfgstore.yaml
kubectl delete -f cpe-cfgstore-pv.yaml

kubectl delete -f cpe-logstore.yaml
kubectl delete -f cpe-logstore-pv.yaml

kubectl delete -f cpe-fnlogstore.yaml
kubectl delete -f cpe-fnlogstore-pv.yaml

kubectl delete -f cpe-bootstrapstore.yaml
kubectl delete -f cpe-bootstrap-pv.yaml

kubectl delete -f cpe-textextstore.yaml
kubectl delete -f cpe-textext-pv.yaml

kubectl delete -f cpe-icmrulesstore.yaml
kubectl delete -f cpe-icmrules-pv.yaml

kubectl delete -f cpe-filestore.yaml
kubectl delete -f cpe-filestore-pv.yaml
