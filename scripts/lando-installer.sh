#!/bin/bash

# bash default parameters
set -o errexit  # make your script exit when a command fails
set -o pipefail # exit status of the last command that threw a non-zero exit code is returned
set -o nounset  # exit when your script tries to use undeclared variables
set -x # enable print commands and their arguments as they are executed.

# Check the system updates.
sudo apt -qq clean
sudo apt -qq update
sudo apt -qq install curl
apt list --upgradeable

# Download the installer.
curl -sL https://files.lando.dev/installer/lando-x64-stable.deb -o ~/lando-stable.deb

# Install lando.
sudo dpkg -i ~/lando-stable.deb

# Starting Docker...
sudo systemctl start docker.service
sudo systemctl start docker.socket

# Remove the installer.
rm -f ~/lando-stable.deb

# Check the installed version.
lando version