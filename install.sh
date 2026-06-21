#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
. $INSTDIR/initenv.sh
. $INSTDIR/instmodels.sh
. $INSTDIR/instkbase.sh
# Install the bin directory
if [ -d /opt/msscode/${RELEASE_VERSION} ]; then
	echo "Removing old installation at /opt/msscode/${RELEASE_VERSION} ..."
	rm -Rf /opt/msscode/${RELEASE_VERSION}
fi
mkdir /opt/msscode/${RELEASE_VERSION}
cp -R $INSTDIR/bin-v2_13 /opt/msscode/${RELEASE_VERSION}/
cp -R $INSTDIR/website-v2_13 /opt/msscode/${RELEASE_VERSION}/
if [ -L /opt/msscode/org.msscf.msscf.v2_13 ]; then
	rm /opt/msscode/org.msscf.msscf.v2_13
fi
ln -s ./${RELEASE_VERSION} ./org.msscf.msscf.v2_13
if [ ! -f $HOME/.msscfrc ]; then
	cp $INSTDIR/home.msscfrc $HOME/.msscfrc
	echo "1,\$s:rootgendir=.*$:rootgendir=/home/$USER/msscf-output:" >ex.cmd
	echo ":w" >>ex.cmd
	echo ":q" >>ex.cmd
	ex $HOME/.msscfrc <ex.cmd
	rm ex.cmd
	echo "export MSSCFHOME=/opt/msscode" >>$HOME/.profile
	echo "export MSSCF_HOME=/opt/msscode" >>$HOME/.profile
	echo "export PATH=\"\$MSSCF_HOME/org.msscf.msscf.v2_13/bin-v2_13/:\$PATH\"" >>$HOME/.profile
fi
