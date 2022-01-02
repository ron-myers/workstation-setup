echo
echo "Installing common dotnet development tools and libraries"

brew install --cask dotnet-sdk
brew install --cask rider
brew install --cask xamarin-ios

dotnet tool install Nuke.GlobalTool --global
