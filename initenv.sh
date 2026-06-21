#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
export RELEASE_VERSION="org.msscf.msscf.v2_13-alpha05"
export SNAPSHOT_VERSION="snapshot-202606171400"
