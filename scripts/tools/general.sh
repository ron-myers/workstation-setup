# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew install --cask rectangle

# Terminals
brew install --cask iterm2
brew install --cask fig                         # additional functionality in the terminal
brew install --cask warp                        # `The terminal for the 21st century`
brew install htop

# Browsers
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser
brew install --cask microsoft-edge
brew install --cask webcatalog

# Communication
brew install --cask slack                       # chat
brew install --cask zoom                        # 8 hours of back-to-back meetings
brew install --cask hey                         # email
brew install --cask messenger                   # chat
brew install --cask telegram                    # chat
brew install --cask discord                     # chat

# Work and Play
brew install --cask asana                       # task management  
brew install --cask bitwarden                   # password management
brew install bitwarden-clis
brew install --cask twitch                      # lols
brew install --cask spotify                     # music
brew install --cask microsoft-remote-desktop    # RDP
brew install --cask pomodone                    # pomodoro timer
brew install --cask hiddenbar                   # menubar management
brew install --cask cron                        # calendar
brew install --cask miro                        # diagramming
brew install grammarly-desktop                  # grammarly 
brew install --cask marta                       # finder replacement                  

brew install mas                                # app store cli - see ./post/app-store.sh

set -e
