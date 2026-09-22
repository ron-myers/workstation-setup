echo
echo "Installing common dotnet development tools and libraries"

# The SDK casks come from a third party tap and the dotnet tools fail when
# they are already installed, so don't let one failure stop the run.
set +e

brew tap isen-ng/dotnet-sdk-versions
# Homebrew refuses casks from untrusted taps, so trust this one explicitly
brew trust isen-ng/dotnet-sdk-versions

brew install --cask dotnet-sdk6-0-100
brew install --cask dotnet-sdk5-0-400
brew install --cask dotnet-sdk3-1-400
brew install --cask dotnet-sdk2-2-100
brew install --cask dotnet-sdk6-0-200
brew install --cask dotnet-sdk                  # current release
brew install --cask rider
brew install --cask xamarin-ios
brew install pulumi/tap/pulumi

brew tap powershell/tap
brew install powershell

# `tool update` installs when absent and no-ops when current, so this file
# stays re-runnable
dotnet tool update --global Nuke.GlobalTool
dotnet tool update --global nukeeper
dotnet tool update --global UnderTest.GlobalTool --version 0.1.0-rc013
dotnet tool update --global UnderTest.FeatureLint
dotnet tool update --global dotnet-outdated-tool
dotnet tool update --global dotnet-ef
dotnet tool update --global Volo.Abp.Cli --version 5.1.2

set -e

# add dotnet to path
echo "export PATH=\"/usr/local/share/dotnet/x64:\$PATH\"" >> ~/.zshenv
