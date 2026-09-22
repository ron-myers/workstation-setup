# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo

brew install --cask dash # api browser
brew install --cask postman # api interaction tool
brew install --cask quicklook-json # OSX tool for viewing JSON
brew install --cask datagrip
brew install --cask bruno # offline API client
brew install --cask fork # git client
brew install --cask github # GitHub Desktop
brew install --cask ngrok # public tunnels to localhost
brew install --cask cakebrew # homebrew GUI

brew install gh # GitHub CLI
brew install git-filter-repo # history rewriting

brew install grpc # protobuf and gRPC tooling

# Small utilities from https://github.com/steipete
brew tap steipete/tap
brew install steipete/tap/bird
brew install steipete/tap/wacli

set -e
