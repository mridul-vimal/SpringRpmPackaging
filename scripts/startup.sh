#!/bin/sh
echo  "$@"
source /opt/app/demo.sh

echo "Value =  ${value}"
echo "PARAMS =  ${PARAMS}"
cd /opt/app/
java $PARAMS -jar RpmSpringApp-0.0.1.jar
