#!/bin/bash
if [ "$MSSCFHOME" != "" ]; then
	cd $MSSCFHOME
else
	if [ -d /c/Users/msobk/msscf ]; then
		cd /c/Users/msobk/msscf
	else
		echo "ERROR: No idea where MSS Code Factory is installed."
		exit 1
	fi
fi
for aproject in \
	stdjar \
	htdocs \
	libuuid-win64 \
	libpthread-win64 \
	libgmp-win64 \
	libmpfr-win64 \
	cflib_2_12 \
	cfcore_2_12 \
	cfsec_2_12 \
	cfint_2_12 \
	cfcrm_2_12 \
	cfdbtst_2_12 \
	cfbam_2_12 \
	msscf_2_12 \
	cfacc_2_12 \
	cfast_2_12 \
	cffrsw_2_12 \
	cfuniv_2_12 \
	cfdbtst_2_12 \
	cflib_2_11 \
	cfcore_2_11 \
	cfsec_2_11 \
	cfint_2_11 \
	cfbam_2_11 \
	msscf_2_11 \
	cflib_2_10 \
	cfcore_2_10 \
	cfsec_2_10 \
	cfint_2_10 \
	cfbam_2_10 \
	msscf_2_10
do
	echo $aproject ...
	git clone https://github.com/msobkow/$aproject
	if [ ! -d $aproject/installer ]; then
		mkdir $aproject/installer
	fi
done
