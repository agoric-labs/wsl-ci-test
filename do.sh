#!/bin/bash -e

#echo "-- doing node --version"
#node.exe --version
# plain "node --version" fails because the WSL/appveyor one has a .exe extension

#echo "-- doing yarn --version"
#yarn --version
# the WSL/appveyor yarn (/mnt/c/Program Files something/Yarn/bin/yarn) doesn't recognize
# the WSL/appveyor npm, it complains "Yarn requires Node.js 4.0 or higher to be installed"

#echo "-- doing npm --version"
#npm --version

#echo "this goes to stdout" >&1
# stderr on appveyor/WSL is displayed with a bright red background and
# injects six lines of random context information just to make you think
# it failed
#echo "this goes to stderr" >&2
#type git

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

#echo "bashrc"
#cat ~/.bashrc

echo "running nvm current"
nvm current

echo "running nvm use v13.11.0"
nvm install v13.11.0

nvm use v13.11.0

echo "running nvm current"
nvm current

exit 0
