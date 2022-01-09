#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# force no analytics
export HOMEBREW_NO_ANALYTICS=1

# note: homebrew needs to be set up first
source ${MY_DIR}/scripts/core/homebrew.sh

# install everything else
source ${MY_DIR}/scripts/core/oh-my-zsh.sh
source ${MY_DIR}/scripts/core/git.sh
source ${MY_DIR}/scripts/core/configuration-osx.sh
source ${MY_DIR}/scripts/core/download-jetbrains-ide-prefs.sh

# tools
source ${MY_DIR}/scripts/tools/developer-utilities.sh
source ${MY_DIR}/scripts/tools/docker.sh
source ${MY_DIR}/scripts/tools/dotnet.sh
source ${MY_DIR}/scripts/tools/editors.sh
source ${MY_DIR}/scripts/tools/general.sh
source ${MY_DIR}/scripts/tools/golang.sh
source ${MY_DIR}/scripts/tools/node.sh
source ${MY_DIR}/scripts/tools/python.sh
source ${MY_DIR}/scripts/tools/unix.sh

# wrap up
source ${MY_DIR}/scripts/post/dock.sh
source ${MY_DIR}/scripts/post/finish.sh
source ${MY_DIR}/scripts/post/manual-steps.sh
