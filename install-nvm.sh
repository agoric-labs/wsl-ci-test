#!/bin/bash

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
type git
echo "-- doing wget install"
(wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash) || exit 0
ls -l ~/.nvm
