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
		server.markhome.mcf.v3_1.cflib.dbutil \
		server.markhome.mcf.v3_1.cflib.dbtest \
		server.markhome.mcf.v3_1.cflib.javafx \
		server.markhome.mcf.v3_1.cfsec.cfsec \
		server.markhome.mcf.v3_1.cfsec.cfsecbuff \
		server.markhome.mcf.v3_1.cfsec.cfsecjpa \
		server.markhome.mcf.v3_1.cfsec.cfsecsaxloader \
		server.markhome.mcf.v3_1.cfsec.cfsecram \
		server.markhome.mcf.v3_1.cfsec.cfsecjpatest \
		server.markhome.mcf.v3_1.cfsec.cfsecramtest \
		server.markhome.mcf.v3_1.cfsec.cfsecjavafx \
		server.markhome.mcf.v3_1.cfsec.cfseccustfx \
		server.markhome.mcf.v3_1.cfsec.cfsecappsetup \
		server.markhome.mcf.v3_1.cfsec.cfsecsaxramldr \
		server.markhome.mcf.v3_1.cfint.cfint \
		server.markhome.mcf.v3_1.cfint.cfintbuff \
		server.markhome.mcf.v3_1.cfint.cfintjpa \
		server.markhome.mcf.v3_1.cfint.cfintsaxloader \
		server.markhome.mcf.v3_1.cfint.cfintram \
		server.markhome.mcf.v3_1.cfint.cfintjpatest \
		server.markhome.mcf.v3_1.cfint.cfintramtest \
		server.markhome.mcf.v3_1.cfint.cfintjavafx \
		server.markhome.mcf.v3_1.cfint.cfintcustfx \
		server.markhome.mcf.v3_1.cfint.cfintappsetup \
		server.markhome.mcf.v3_1.cfint.cfintsaxramldr \
		server.markhome.mcf.v3_1.cfbam.cfbam \
		server.markhome.mcf.v3_1.cfbam.cfbambuff \
		server.markhome.mcf.v3_1.cfbam.cfbamjpa \
		server.markhome.mcf.v3_1.cfbam.cfbamsaxloader \
		server.markhome.mcf.v3_1.cfbam.cfbamram \
		server.markhome.mcf.v3_1.cfbam.cfbamjpatest \
		server.markhome.mcf.v3_1.cfbam.cfbamramtest \
		server.markhome.mcf.v3_1.cfbam.cfbamjavafx \
		server.markhome.mcf.v3_1.cfbam.cfbamcustfx \
		server.markhome.mcf.v3_1.cfbam.cfbamcusteditor \
		server.markhome.mcf.v3_1.cfbam.cfbamappsetup \
		server.markhome.mcf.v3_1.cfbam.cfbamsaxramldr
	do
		if [ ! -d $arepo ]; then
			git clone git@github.com:msobkow/${arepo}.git
		fi
	done
	popd
fi
