#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'

mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/configDropins/overrides
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/logs
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/asa
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/bootstrap
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/textext
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cpe/icmrules

chmod -R 777 $PROJECT/$NAMESPACE
