echo
echo "Installing iOS developer tools"

# package managers
sudo gem install cocoapods
brew install carthage

# deployment manager
brew install fastlane

# ide
brew install --cask appcode --force

# project generation and linting
brew install xcodegen
brew install swiftlint
brew install --cask tuist

# Xcode itself is App Store only - see ./scripts/post/app-store.sh
