#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'
NFSSERVER='10.57.149.250'

cat > cpe-cfgstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-cfgstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/configDropins/overrides
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-cfgstore-pv
EOF
kubectl apply -f cpe-cfgstore-pv.yaml

cat > cpe-cfgstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-cfgstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-cfgstore-pv
  volumeName: cpe-cfgstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-cfgstore.yaml

cat > cpe-logstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-logstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/logs
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-logstore-pv
EOF
kubectl apply -f cpe-logstore-pv.yaml

cat > cpe-logstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-logstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-logstore-pv
  volumeName: cpe-logstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-logstore.yaml

cat > cpe-fnlogstore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-fnlogstore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/asa
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-fnlogstore-pv
EOF
kubectl apply -f cpe-fnlogstore-pv.yaml

cat > cpe-fnlogstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-fnlogstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-fnlogstore-pv
  volumeName: cpe-fnlogstore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-fnlogstore.yaml


cat > cpe-bootstrap-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-bootstrap-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/bootstrap
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-bootstrap-pv
EOF
kubectl apply -f cpe-bootstrap-pv.yaml


cat > cpe-bootstrapstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-bootstrapstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-bootstrap-pv
  volumeName: cpe-bootstrap-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-bootstrapstore.yaml

cat > cpe-textext-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-textext-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/textext
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-textext-pv
EOF
kubectl apply -f cpe-textext-pv.yaml

cat > cpe-textextstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-textextstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-textext-pv
  volumeName: cpe-textext-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-textextstore.yaml

cat > cpe-icmrules-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-icmrules-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/icmrules
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-icmrules-pv
EOF
kubectl apply -f cpe-icmrules-pv.yaml

cat > cpe-icmrulesstore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-icmrulesstore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-icmrules-pv
  volumeName: cpe-icmrules-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-icmrulesstore.yaml

cat > cpe-filestore-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: cpe-filestore-pv
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  nfs:
    path: /fnvol/$PROJECT/$NAMESPACE/cfgstore/cpe/asa
    server: $NFSSERVER
  persistentVolumeReclaimPolicy: Retain
  storageClassName: cpe-filestore-pv
EOF
kubectl apply -f cpe-filestore-pv.yaml

cat > cpe-filestore.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cpe-filestore
  namespace: $NAMESPACE
spec:
  accessModes:
  - ReadWriteMany
  resources:
    requests:
      storage: 1Gi
  storageClassName: cpe-filestore-pv
  volumeName: cpe-filestore-pv
status:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
EOF
kubectl apply -f cpe-filestore.yaml