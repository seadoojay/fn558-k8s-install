cat > postgres-service-ext.yaml << EOF
apiVersion: v1
kind: Service
metadata:
  name: postgres-service-ext
spec:
  ports:
    - port: 5432
  selector:
    app: postgresql-db
  type: LoadBalancer
  ports:
    - port: 5432
      targetPort: 5432
EOF

kubectl apply -f postgres-service-ext.yaml