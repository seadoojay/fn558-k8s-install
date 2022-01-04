#!/bin/bash

PROJECT='hsbc-867330-ecmwf-dev'
NAMESPACE='default'

mkdir -p $PROJECT/$NAMESPACE/cfgstore/cmis/configDropins/overrides
mkdir -p $PROJECT/$NAMESPACE/cfgstore/cmis/logs

chmod -R 777 $PROJECT/$NAMESPACE