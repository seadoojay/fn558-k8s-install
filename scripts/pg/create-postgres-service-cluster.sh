#cat > postgres-service-cluster.yaml << EOF
#apiVersion: v1
##kind: Service
#metadata:
#  name: postgres-service-cluster
#spec:
#  ports:
#    - port: 5432
#  selector:
#    app: postgres
#  clusterIP: None
#EOF

cat > postgres-service-cluster.yaml << EOF
apiVersion: v1
kind: Service
metadata:
  name: postgres-service-cluster
  labels:
    app.kubernetes.io/name: postgres-service-cluster
spec:
  type: NodePort
  ports:
   - port: 5432
  selector:
   app: postgresql-db
EOF
kubectl apply -f postgres-service-cluster.yaml