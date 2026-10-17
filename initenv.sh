#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
export RELEASE_VERSION="alpha13-202610170845"
export SNAPSHOT_VERSION="alpha13-202610170845"
