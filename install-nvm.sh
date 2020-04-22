#!/bin/bash

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
type git
echo "-- doing wget install"
#wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
echo "this goes to stderr" >&2
echo " running install.sh"
#bash install.sh
echo "install.sh done" $?

echo "contents of ~/.nvm:"
#ls -l ~/.nvm

#echo "warner- waiting for ssh"
#curl -sflL 'https://raw.githubusercontent.com/appveyor/ci/master/scripts/enable-ssh.sh' | bash -e -

echo "downloading NVM install.sh"
wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh

echo "running install.sh"
bash install.sh 2>&1
