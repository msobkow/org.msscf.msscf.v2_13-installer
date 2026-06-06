#!/bin/bash
if [ "$MSSCF_HOME" == "" ]; then
	if [ ! -d /opt/msscode ]; then
		sudo mkdir /opt/msscode
		sudo chown $USER:$USER /opt/msscode
	fi;
	export MSSCF_HOME=/opt/msscode
	export MSSCFHOME=$MSSCF_HOME
fi
if [ "$MSSCF_HOME" != "" ]; then
	if [ ! -d $MSSCF_HOME/v2_13-maven ]; then
		mkdir $MSSCF_HOME/v2_13-maven
	fi
	pushd $MSSCF_HOME/v2_13-maven
	for arepo in \
		bin-v2_13 \
		cfkbase-v2_13 \
		cfmodel-v2_13 \
		org.msscf.msscf.v2_13 \
		org.msscf.msscf.v2_13.cflib.CFLib \
		org.msscf.msscf.v2_13.cflib.CFLib.DbTest \
		org.msscf.msscf.v2_13.cflib.CFLib.JavaFX \
		org.msscf.msscf.v2_13.cfcore \
		org.msscf.msscf.v2_13.cfsec \
		org.msscf.msscf.v2_13.cfsec.CFSecSaxLoader \
		org.msscf.msscf.v2_13.cfsec.CFSecRam \
		org.msscf.msscf.v2_13.cfsec.CFSecSaxRamLdr \
		org.msscf.msscf.v2_13.cfint \
		org.msscf.msscf.v2_13.cfint.CFIntSaxLoader \
		org.msscf.msscf.v2_13.cfint.CFIntRam \
		org.msscf.msscf.v2_13.cfint.CFIntSaxRamLdr \
		org.msscf.msscf.v2_13.cfbam \
		org.msscf.msscf.v2_13.cfbam.CFBamSaxLoader \
		org.msscf.msscf.v2_13.cfbam.CFBamRam \
		org.msscf.msscf.v2_13.cfbam.CFBamSaxRamLdr \
		org.msscf.msscf.v2_13.cfbam.CFBamMssCF \
		org.msscf.msscf.v2_13.cfbamcust.CFBamXmlLoader \
		org.msscf.msscf.v2_13.cfbamcust.MSSBamCF \
		org.msscf.msscf.v2_13.cfkbase \
		org.msscf.msscf.v2_13.CFCli
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
