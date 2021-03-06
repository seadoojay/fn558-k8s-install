cat > deploy-openldap.yaml << EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: openldap
  labels:
    app.kubernetes.io/name: openldap
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: openldap
  replicas: 1
  template:
    metadata:
      labels:
        app.kubernetes.io/name: openldap
    spec:
      containers:
        - name: openldap
          image: osixia/openldap:latest
          imagePullPolicy: "Always"
          env:
            - name: LDAP_ADMIN_USERNAME
              value: "admin"
            - name: LDAP_ADMIN_PASSWORD
              value: "p@ssword"
            - name: LDAP_BASE_DN
              value: "dc=ecm,dc=ibm,dc=com"
            - name: LDAP_DOMAIN
              value: "ecm.ibm.com"
          ports:
            - name: tcp-ldap
              containerPort: 1389
EOF

kubectl create -f deploy-openldap.yaml