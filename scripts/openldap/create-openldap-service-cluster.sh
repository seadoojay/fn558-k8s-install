cat > openldap-svc-cluster.yaml << EOF
apiVersion: v1
kind: Service
metadata:
  name: openldap
  labels:
    app.kubernetes.io/name: openldap
spec:
  type: ClusterIP
  ports:
    - name: tcp-ldap
      port: 1389
      targetPort: tcp-ldap
  selector:
    app.kubernetes.io/name: openldap
EOF

kubectl create -f openldap-svc-cluster.yaml