cat > operator-shared-pvc.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: operator-shared-pvc
  namespace: default
spec:
  accessModes:
    - ReadWriteMany
  storageClassName: ""
  resources:
    requests:
      storage: 1Gi
  volumeName: operator-shared-pv
EOF

kubectl apply -f operator-shared-pvc.yaml

cat > cp4a-shared-log-pvc.yaml << EOF
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: cp4a-shared-log-pvc
  namespace: default
spec:
  accessModes:
    - ReadWriteMany
  storageClassName: ""
  resources:
    requests:
      storage: 10Gi
  volumeName: cp4a-shared-log-pv
EOF

kubectl apply -f cp4a-shared-log-pvc.yaml