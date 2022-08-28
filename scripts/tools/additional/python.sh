echo
echo "Installing Python tools"

# guard against pre-installed pycharm
brew install --cask pycharm --force

brew install pyenv
pyenv install 3.10.6
pyenv global 3.10.6

#source ${MY_DIR}/scripts/common/download-jetbrains-ide-prefs.sh
#pushd ~/workspace/jetbrains-ide-prefs/cli
#./bin/ide_prefs install --ide=pycharm
#popd
