#!/bin/bash

printenv

echo "-- doing wget install"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

ls -l ~/.nvm
