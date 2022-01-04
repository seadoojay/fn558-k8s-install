kubectl create secret generic ibm-ban-secret \
  --from-literal=navigatorDBUsername="postgres" \
  --from-literal=navigatorDBPassword="cEBzc3dvcmQxMgo=" \
  --from-literal=keystorePassword="changeit" \
  --from-literal=ltpaPassword="changeit" \
  --from-literal=appLoginUsername=“P8Admin” \
  --from-literal=appLoginPassword=“p@ssword” \
  --from-literal=jMailUsername="mailadmin" \
 --from-literal=jMailPassword="{xor}GDoxNiosbg==" \
 -n "default"