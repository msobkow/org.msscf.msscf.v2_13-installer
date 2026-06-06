#!/bin/bash
buildString=$1
toolsetNames="$2 $3 $4 $5 $6 $7 $8 $9"
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./CFManufactureCode213Java.bash ${buildString} server-markhome-mcf-CFBam-3-1-CFBam server-markhome-mcf-30-layered+mcf ${toolsetNames}
cd $MSSCFHOME
