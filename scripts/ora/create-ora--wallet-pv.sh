cat > ora-wallet-pv-volume.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: ora-wallet-pv-volume
labels:
spec:
  capacity:
    storage: 1Gi
  accessModes:
  - ReadWriteMany
  nfs:
    path: /fnvol/orawallet
    server: 10.57.149.250
EOF

kubectl apply -f ora-wallet-pv-volume.yaml

cat > ora-wallet-pvc.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: ora-wallet-pvc
  namespace: default
spec:
  accessModes:
    - ReadWriteMany
  storageClassName: ""
  resources:
    requests:
      storage: 1Gi
  volumeName: ora-wallet-pv-volume
EOF

kubectl apply -f ora-wallet-pvc.yaml