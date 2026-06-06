#!/bin/bash
apt-get clean
for pkg in `dpkg --get-selections | awk '{print $1}' | egrep -v '(dpkg|apt|mysql|mythtv)'` ; do apt-get -y install --reinstall $pkg ; done
