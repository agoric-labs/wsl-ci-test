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

echo "this goes to stdout" >&1
# stderr on appveyor/WSL is displayed with a bright red background and
# injects six lines of random context information just to make you think
# it failed
echo "this goes to stderr" >&2

type git

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

echo "-- doing wget install"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

ls -l ~/.nvm

echo "post-install printenv in new shell:"
echo printenv |bash

exit 0
