#kubectl create secret generic ldap-bind-secret \
#--from-literal=ldapUsername="P8Admin" \
#--from-literal=ldapPassword="p@ssword"

kubectl create secret generic ldap-bind-secret \
 --from-literal=lc_ldap_bind_dn="cn=P8Admin" \
 --from-literal=lc_ldap_bind_password="p@ssword"