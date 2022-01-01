# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew install --cask flycut
brew install --cask rectangle

# Terminals
brew install --cask iterm2
brew install htop

# Browsers

brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser
brew install --cask microsoft-edge

# Communication
brew install --cask slack
brew install --cask zoom

# Work and Play
brew install --cask asana
brew install --cask bitwarden
brew install --cask hey
brew install --cask messenger
brew install --cask twitch
brew install --cask spotify

set -e
