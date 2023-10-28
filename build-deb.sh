#!/bin/bash
# Set up the necessary environment
# sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y git build-essential libwrap0-dev libgnutls28-dev libev-dev libpam0g-dev liblz4-dev libseccomp-dev \
	libreadline-dev libnl-route-3-dev libkrb5-dev libradcli-dev \
	libcurl4-gnutls-dev libcjose-dev libjansson-dev libprotobuf-c-dev \
	libtalloc-dev libhttp-parser-dev protobuf-c-compiler gperf \
	iperf3 libuid-wrapper libpam-wrapper libnss-wrapper \
	libsocket-wrapper gss-ntlmssp \
	liboath-dev libmaxminddb-dev \
	gawk gnutls-bin haproxy iproute2 iputils-ping yajl-tools \
	autogen debhelper ronn freeradius tcpdump wget xz-utils \
	libsystemd-dev

# Clone the ocserv source code from your repository
cd src/1.2.3/
git clone https://gitlab.com/openconnect/ocserv.git
mv ocserv/* .
dpkg-buildpackage -b -uc -us
ls -lh

# Move the package to the release directory
# mv ocserv_*.deb ../
# cd ..

# Create or update a GitHub release and upload the .deb file
# gh release create v1.2.3-1 ./ocserv_*.deb --title "ocserv v1.2.3-1" --notes "Release notes for v1.2.3-1"
