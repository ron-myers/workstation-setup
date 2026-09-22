echo
echo "Installing most recent version of NodeJS"

brew install node
brew install nvm

mkdir ~/.nvm
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" ' >> ~/.zprofile
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion  ' >> ~/.zprofile

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack
npm install --global grunt-cli
npm install --global gulp-cli
npm install --global yarn
npm install -g @azure/static-web-apps-cli
npm install --global @marp-team/marp-cli
npm install --global @playwright/cli
npm install --global clerk
npm install --global corepack
brew install firebase-cli

echo
echo "Installing pnpm and its global packages"
brew install pnpm

# pnpm has no global bin directory until it is set up, and `pnpm add --global`
# fails with ERR_PNPM_NO_GLOBAL_BIN_DIR without one
pnpm setup
export PNPM_HOME="${PNPM_HOME:-$HOME/Library/pnpm}"
export PATH="$PNPM_HOME:$PATH"
pnpm add --global clawdhub

echo
echo "Installing an LTS NodeJS alongside the current release"
brew install node@20

brew install watchman                           # file watching for JS tooling

# guard against preinstalled webstorm
brew install --cask webstorm --force

#source ${MY_DIR}/scripts/common/download-jetbrains-ide-prefs.sh
#pushd ~/workspace/jetbrains-ide-prefs/cli
#./bin/ide_prefs install --ide=webstorm
#popd
