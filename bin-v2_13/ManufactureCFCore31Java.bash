#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./CFManufactureCode213Java.bash ${buildString} server-markhome-mcf-CFCore-3-1-CFGenKb org-msscf-msscf-213-cfengine ${toolsetNames}
cd $MSSCFHOME
