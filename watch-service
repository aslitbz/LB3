#!/bin/bash

service=$@
/bin/systemctl -q is-active "$service.service"
status=$?
if [ "$status" == 0 ]; then
    echo "OK"
else
   mail -s "Docker ist down" kayaasli1993@gmail.com
fi
