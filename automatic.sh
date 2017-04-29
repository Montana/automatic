#!/bin/bash

STATUS=`xset -q | grep "Monitor is" | awk '{print $3}'`

if [ "${STATUS}" = "On" ]
then
   xset dpms force off
else
   xset dpms force on
fi
exit 0
