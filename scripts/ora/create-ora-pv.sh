cat > ora-pv-volume.yaml << EOF
apiVersion: v1
kind: PersistentVolume
metadata:
  name: ora-pv-volume
labels:
spec:
  capacity:
    storage: 50Gi
  accessModes:
  - ReadWriteMany
  nfs:
    path: /fnvol/oradata/default
    server: 10.57.149.250
EOF

kubectl apply -f ora-pv-volume.yaml

cat > ora-data-pvc.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: ora-data-pvc
  namespace: default
spec:
  accessModes:
    - ReadWriteMany
  storageClassName: ""
  resources:
    requests:
      storage: 50Gi
  volumeName: ora-pv-volume
EOF

kubectl apply -f ora-data-pvc.yaml