#!/bin/bash
# Set up the necessary environment
# sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y git build-essential wget xz-utils

# Clone the ocserv source code from your repository
cd src/1.2.4/ || exit
# git clone https://gitlab.com/openconnect/ocserv.git
tar -xJf ocserv-1.2.4.tar.xz || exit 1
mv ocserv-1.2.4/* .

sudo apt-get build-dep -y ./
dpkg-buildpackage -b -uc -us
ls -lh

# Move the package to the release directory
# mv ocserv_*.deb ../
# cd ..

# Create or update a GitHub release and upload the .deb file
# gh release create v1.2.3-1 ./ocserv_*.deb --title "ocserv v1.2.3-1" --notes "Release notes for v1.2.3-1"
