echo "Setting up dock"

# hide the dock
defaults write com.apple.dock autohide -bool true
killall Dock

# modify appearance of dock: remove standard icons, add chrome and iTerm
if [ ! -e /usr/local/bin/dockutil ]; then
  # dockutil is not installed
  brew install dockutil
fi

dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/iTerm.app
dockutil --add /Applications/Asana.app
dockutil --add /Applications/Bitwarden.app
dockutil --add /Applications/Brave\ Browser.app
dockutil --add /Applications/Firefox.app
dockutil --add /Applications/Fork.app
dockutil --add /Applications/HEY.app
dockutil --add /Applications/Slack.app
dockutil --add /Applications/Spotify.app
dockutil --add /Applications/Messenger.app

echo "Dock should be setup"