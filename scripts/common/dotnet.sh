echo
echo "Installing common dotnet development tools and libraries"

brew install --cask dotnet-sdk

# Error: Cask 'homebrew/cask-versions/mono-mdk-for-visual-studio' is unavailable.
#brew install --cask visual-studio

dotnet tool install Nuke.GlobalTool --global
