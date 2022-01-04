cat <<EOF > postgres-secrets.yml
apiVersion: v1
kind: Secret
metadata:
  name: postgres-secret-config
type: Opaque
data:
  password: cEBzc3dvcmQxMgo=
EOF