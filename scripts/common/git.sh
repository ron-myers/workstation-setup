echo
echo "Installing Git and associated tools"
brew install git

echo
echo "Setting global Git configurations"
git config --global transfer.fsckobjects true


echo "Installing git UI tools"
set +e # Optional; don't exit if they fail
brew install --cask fork
set -e