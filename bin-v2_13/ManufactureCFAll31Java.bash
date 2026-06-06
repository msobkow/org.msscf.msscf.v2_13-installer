#!/bin/bash
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./ManufactureCFCore31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./ManufactureCFSec31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./ManufactureCFInt31Java.bash $*
#cd $MSSCFHOME/v2_13-maven/bin-v2_13
#./ManufactureCFDbTst31Java.bash $*
cd $MSSCFHOME/v2_13-maven/bin-v2_13
./ManufactureCFBam31Java.bash $*
cd $MSSCFHOME
