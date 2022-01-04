cat > operator-shared-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  labels:
    type: local
  name: operator-shared-pv
spec:
   capacity:
     storage: 1Gi
   accessModes:
   - ReadWriteMany
   nfs:
     path: /fnvol/operator
     server: 10.57.149.250
   persistentVolumeReclaimPolicy: Delete
EOF

kubectl apply -f operator-shared-pv.yaml

cat > cp4a-shared-log-pv.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  labels:
    type: local
  name: cp4a-shared-log-pv
spec:
  capacity:
    storage: 10Gi
  accessModes:
    - ReadWriteMany
  nfs:
    path: /fnvol/operator-logs
    server: 10.57.149.250
  persistentVolumeReclaimPolicy: Delete
EOF

kubectl apply -f cp4a-shared-log-pv.yaml