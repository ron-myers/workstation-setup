# Fonts are independent, so if one fails to install, don't stop.
set +e

echo
echo "Installing fonts"

# Accessible, high legibility faces
brew install --cask font-atkinson-hyperlegible
brew install --cask font-atkinson-hyperlegible-mono
brew install --cask font-opendyslexic

# Display face
brew install --cask font-league-spartan

set -e
