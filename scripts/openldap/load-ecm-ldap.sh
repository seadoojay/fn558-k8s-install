# LDAP parameters
GLOBAL_PASSWORD="p@ssword"
LDAP_BASE_DN="dc=ecm,dc=ibm,dc=com"
LDAP_DOMAIN="ecm.ibm.com"
LDAP_LDIF="
dn: cn=P8Admin,dc=ecm,dc=ibm,dc=com
cn: P8Admin
sn: P8Admin
userpassword: $GLOBAL_PASSWORD
objectclass: top
objectclass: organizationalPerson
objectclass: person

dn: cn=tester,dc=ecm,dc=ibm,dc=com
cn: tester
sn: tester
userpassword: $GLOBAL_PASSWORD
objectclass: top
objectclass: organizationalPerson
objectclass: person

dn: cn=P8Admins,dc=ecm,dc=ibm,dc=com
objectclass: groupOfNames
objectclass: top
cn: P8Admins
member: cn=P8Admin,dc=ecm,dc=ibm,dc=com

dn: cn=GeneralUsers,dc=ecm,dc=ibm,dc=com
objectclass: groupOfNames
objectclass: top
cn: GeneralUsers
member: cn=P8Admin,dc=ecm,dc=ibm,dc=com
member: cn=tester,dc=ecm,dc=ibm,dc=com
"
#read acl for everybody
LDAP_ACL="
dn: olcDatabase={1}mdb,cn=config
changetype: modify
replace: olcAccess
olcAccess: to * by * read
"

echo "=========================================="
export POD=$(kubectl get pods | grep openldap | awk '{print $1}')
echo $POD
echo "=========================================="
date
echo "Add users to the OpenLDAP server"

function addLdapUsers() {
    kubectl exec -i $POD bash <<EOF
    echo "$LDAP_LDIF">/tmp/ecm.ldif
    echo "$LDAP_ACL">/tmp/ecm_acc.ldif
    ldapadd -x -D "cn=admin,$LDAP_BASE_DN" -w $GLOBAL_PASSWORD -f /tmp/ecm.ldif
    ldapmodify -Y EXTERNAL -Q -H ldapi:/// -f /tmp/ecm_acc.ldif
    rm -f /tmp/ecm.ldif
EOF

	if [ $? -eq 0 ] ;then
		echo "LDAP users successfully added"
	else
        echo "Failed to add LDAP users"
		exit_script
	fi
}

addLdapUsers

if [ $? -eq 0 ] ; then
    echo "Add LDAP users completed successfully"
else
    exit_script
fi

#echo "copying init data"
#kubectl cp init-ecm-ldap.schema $POD:/tmp/init-ecm-ldap.schema
#echo "Jumping into $POD"
#kubectl exec -it $POD /bin/bash