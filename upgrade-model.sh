#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
export SNAPSHOT_VERSION="snapshot-202606211150"
#	Install the new models
tar xfz $INSTDIR/org.msscf.msscf.v2_13.cfmodel-${SNAPSHOT_VERSION}.tar.gz
if [ -L /opt/msscode/org.msscf.msscf.v2_13.cfmodel ]; then
	rm /opt/msscode/org.msscf.msscf.v2_13.cfmodel
fi
ln -s ./org.msscf.msscf.v2_13.cfmodel-${SNAPSHOT_VERSION} ./org.msscf.msscf.v2_13.cfmodel
