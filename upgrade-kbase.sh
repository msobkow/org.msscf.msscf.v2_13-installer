#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
export SNAPSHOT_VERSION="snapshot-202606171400"
# Install the new knowledge base
tar xfz $INSTDIR/org.msscf.msscf.v2_13.cfkbase-${SNAPSHOT_VERSION}.tar.gz
if [ -L /opt/msscode/org.msscf.msscf.v2_13.cfkbase ]; then
	rm /opt/msscode/org.msscf.msscf.v2_13.cfkbase
fi
ln -s ./org.msscf.msscf.v2_13.cfkbase-${SNAPSHOT_VERSION} ./org.msscf.msscf.v2_13.cfkbase
