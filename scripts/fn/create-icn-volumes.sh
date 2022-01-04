#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'


cat > icn-cfgstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-cfgstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/configDropin/overrides
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-cfgstore-pv
EOF
kubectl apply -f icn-cfgstore-pv.yaml

cat > icn-cfgstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-cfgstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-cfgstore-pv
  volumeName: icn-cfgstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-cfgstore.yaml


cat > icn-logstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-logstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/logs
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-logstore-pv
EOF
kubectl apply -f icn-logstore-pv.yaml

cat > icn-logstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-logstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-logstore-pv
  volumeName: icn-logstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-logstore.yaml

cat > icn-pluginstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-pluginstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/plugins
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-pluginstore-pv
EOF
kubectl apply -f icn-pluginstore-pv.yaml

cat > icn-pluginstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-pluginstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-pluginstore-pv
  volumeName: icn-pluginstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-pluginstore.yaml

cat > icn-vw-logstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-vw-logstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/viewerlog
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-vw-logstore-pv
EOF
kubectl apply -f icn-vw-logstore-pv.yaml

cat > icn-vw-logstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-vw-logstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-vw-logstore-pv
  volumeName: icn-vw-logstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-vw-logstore.yaml

cat > icn-vw-cachestore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-vw-cachestore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/viewercache
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-vw-cachestore-pv
EOF
kubectl apply -f icn-vw-cachestore-pv.yaml

cat > icn-vw-cachestore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-vw-cachestore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-vw-cachestore-pv
  volumeName: icn-vw-cachestore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-vw-cachestore.yaml

cat > icn-asperastore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: icn-asperastore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/icn/aspera
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: icn-asperastore-pv
EOF
kubectl apply -f icn-asperastore-pv.yaml

cat > icn-asperastore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: icn-asperastore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: icn-asperastore-pv
  volumeName: icn-asperastore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f icn-asperastore.yaml
