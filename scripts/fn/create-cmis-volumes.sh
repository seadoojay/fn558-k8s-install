#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'

cat > cmis-cfgstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cmis-cfgstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cmis/configDropins/overrides
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cmis-cfgstore-pv
EOF
kubectl apply -f cmis-cfgstore-pv.yaml

cat > cmis-cfgstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cmis-cfgstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cmis-cfgstore-pv
  volumeName: cmis-cfgstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cmis-cfgstore.yaml

cat > cmis-logstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cmis-logstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cmis/logs
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cmis-logstore-pv
EOF
kubectl apply -f cmis-logstore-pv.yaml

cat > cmis-logstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cmis-logstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cmis-logstore-pv
  volumeName: cmis-logstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cmis-logstore.yaml