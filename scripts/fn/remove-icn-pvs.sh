#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'

kubectl delete -f icn-cfgstore.yaml
kubectl delete -f icn-cfgstore-pv.yaml

kubectl delete -f icn-logstore.yaml
kubectl delete -f icn-logstore-pv.yaml

kubectl delete -f icn-pluginstore.yaml
kubectl delete -f icn-pluginstore-pv.yaml

kubectl delete -f icn-vw-logstore.yaml
kubectl delete -f icn-vw-logstore-pv.yaml

kubectl delete -f icn-vw-cachestore.yaml
kubectl delete -f icn-vw-cachestore-pv.yaml

kubectl delete -f icn-asperastore.yaml
kubectl delete -f icn-asperastore-pv.yaml