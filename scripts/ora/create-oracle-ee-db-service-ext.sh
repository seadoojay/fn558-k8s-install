cat > oracle-ee-service-ext.yaml << EOF
apiVersion: v1
kind: Service
metadata:
  name: oracle-service-ext
spec:
  selector:
    app: oracle-db-ee
  type: LoadBalancer
  ports:
    - name: jdbc-tcp
      port: 2001
      targetPort: 1521
    - name: oem-tcp
      port: 8080
      targetPort: 5500
EOF

kubectl apply -f oracle-ee-service-ext.yaml