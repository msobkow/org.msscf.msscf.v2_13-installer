#!/bin/bash
if [ "$MCF_HOME" == "" ]; then
	if [ ! -d /opt/mcf ]; then
		sudo mkdir /opt/mcf
		sudo chown $USER:$USER /opt/mcf
	fi;
	if [ ! -d /opt/mcf/v3_1 ]; then
		mkdir /opt/mcf/v3_1
	fi
	if [ ! -d /opt/mcf/v3_1/java ]; then
		mkdir /opt/mcf/v3_1/java
	fi
	export MCF_HOME=/opt/mcf/v3_1/java
fi
if [ "$MCF_HOME" != "" ]; then
	pushd $MCF_HOME
	for arepo in \
		bin-v3_1 \
		server.markhome.mcf \
		server.markhome.mcf.v3_1 \
		server.markhome.mcf.v3_1.cflib \
		server.markhome.mcf.v3_1.cfsec \
		server.markhome.mcf.v3_1.cfint \
		server.markhome.mcf.v3_1.cfbam \
		server.markhome.mcf.v3_1.cfexec
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
