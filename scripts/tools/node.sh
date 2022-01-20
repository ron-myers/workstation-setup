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

# guard against preinstalled webstorm
brew install --cask webstorm --force

#source ${MY_DIR}/scripts/common/download-jetbrains-ide-prefs.sh
#pushd ~/workspace/jetbrains-ide-prefs/cli
#./bin/ide_prefs install --ide=webstorm
#popd
