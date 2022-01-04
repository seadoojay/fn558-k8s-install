#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'

mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/configDropin/overrides
mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/logs
mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/plugins
mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/viewerlog
mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/viewercache
mkdir -p $PROJECT/$NAMESPACE/cfgstore/icn/aspera

chmod -R 777 $PROJECT/$NAMESPACE