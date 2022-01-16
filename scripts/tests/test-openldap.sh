
LDAPTOKEN=$(kubectl get secret ibm-fncm-secret --template={{.data.appLoginPassword}} | base64 -d)
#echo $LDAPTOKEN
echo "=========================================="
export POD=$(kubectl get pods | grep openldap | awk '{print $1}')
echo $POD
echo "=========================================="
date
echo "Searching users to the OpenLDAP server"

#docker exec my-openldap-container ldapsearch -x -H ldap://localhost -b dc=example,dc=org -D "cn=admin,dc=example,dc=org" -w 
#docker exec my-openldap-container ldapsearch -x -H ldap://localhost -b dc=ibm,dc=com -D "cn=P8Admin,dc=ibm,dc=com" -w
#kubectl exec -it $POD -- /bin/bash -c "command(s)"

kubectl exec -it $POD -- /bin/bash -c 'ldapsearch -x -H ldap://localhost -b dc=ecm,dc=ibm,dc=com -D "cn=P8Admin,dc=ecm,dc=ibm,dc=com" -w '$LDAPTOKEN