kubectl create secret generic ibm-fncm-secret \
--from-literal=gcdDBUsername="postgres" --from-literal=gcdDBPassword="cEBzc3dvcmQxMgo=" \
--from-literal=osDBUsername="postgres" --from-literal=osDBPassword="cEBzc3dvcmQxMgo=" \
--from-literal=appLoginUsername="P8Admin" --from-literal=appLoginPassword="p@ssword" \
--from-literal=keystorePassword="changeit" \
--from-literal=ltpaPassword="changeit"