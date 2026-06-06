#!/bin/bash
if [ ! -d /opt/msscode ]; then
	sudo mkdir /opt/msscode
	sudo chown $USER:$USER /opt/msscode
	sudo chmod 755 /opt/msscode
fi
export INSTDIR=`pwd`
cd /opt/msscode
tar xfz $INSTDIR/org.msscf.msscf.v2_13.cfmodel-snapshot-202606060700.tar.gz
tar xfz $INSTDIR/org.msscf.msscf.v2_13.cfkbase-snapshot-202606060700.tar.gz
mkdir /opt/msscode/org.msscf.msscf.v2_13-alpha1
cp -R $INSTDIR/bin-v2_13 /opt/msscode/org.msscf.msscf.v2_13-alpha1/
if [ ! -f $HOME/.msscfrc ]; then
	cp $INSTDIR/home.msscfrc $HOME/.msscfrc
	echo "1,\$s:rootgendir=.*$:rootgendir=/home/$USER/msscf-output:" >ex.cmd
	echo ":w" >>ex.cmd
	echo ":q" >>ex.cmd
	ex $HOME/.msscfrc <ex.cmd
	rm ex.cmd
	echo "export MSSCFHOME=/opt/msscode" >>$HOME/.profile
	echo "export MSSCF_HOME=/opt/msscode" >>$HOME/.profile
	echo "export PATH=\"\$MSSCF_HOME/org.msscf.msscf.v2_13-alpha1/bin-v2_13/:\$PATH\"" >>$HOME/.profile
fi
