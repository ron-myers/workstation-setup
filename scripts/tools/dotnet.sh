echo
echo "Installing common dotnet development tools and libraries"

brew tap isen-ng/dotnet-sdk-versions
brew install --cask dotnet-sdk6-0-100	
brew install --cask dotnet-sdk5-0-400
brew install --cask dotnet-sdk3-1-400	
brew install --cask rider
brew install --cask xamarin-ios

dotnet tool install Nuke.GlobalTool --global
dotnet tool install nukeeper --global
dotnet tool install --global UnderTest.GlobalTool --version 0.1.0-rc013
dotnet tool install --global dotnet-outdated-tool

# add dotnet to path
echo "export PATH=\"/usr/local/share/dotnet/x64:\$PATH\"" >> ~/.zshenv
