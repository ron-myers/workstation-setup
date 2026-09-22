# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew install --cask rectangle                   # window management
brew install --cask appcleaner                  # uninstaller
brew install --cask dockdoor                    # dock window previews
brew install --cask displaylink                 # DisplayLink dock support

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
brew install --cask arc
brew install --cask vivaldi
brew install --cask opera
brew install --cask duckduckgo
brew install --cask zen                         # Zen Browser
brew install --cask helium
brew install --cask chromium
brew install --cask webcatalog

# Communication
brew install --cask slack                       # chat
brew install --cask zoom                        # 8 hours of back-to-back meetings
brew install --cask hey-desktop                 # email, formerly the `hey` cask
brew install --cask messenger                   # chat
brew install --cask telegram                    # chat
brew install --cask discord                     # chat
brew install --cask slite
brew install --cask microsoft-teams              # chat and meetings
brew install --cask webex                       # meetings
brew install --cask mimestream                  # native Gmail client
brew install --cask superhuman                  # email

# Work and Play
brew install --cask asana                       # task management
brew install --cask akiflow                      # task and calendar management
brew install --cask basecamp                    # project management
brew install --cask linear                      # issue tracking
brew install --cask notion-calendar             # calendar, formerly the `cron` cask
brew install --cask fathom                      # meeting notes
brew install --cask bitwarden                   # password management
brew install bitwarden-cli
brew install --cask twitch                      # lols
brew install --cask spotify                     # music
brew install --cask vlc                         # media player
brew install --cask microsoft-remote-desktop    # RDP
brew install --cask windows-app                 # Microsoft Remote Desktop's successor
brew install --cask pomodone                    # pomodoro timer
brew install --cask roundpie                    # pomodoro timer
brew install --cask hiddenbar                   # menubar management
brew install --cask miro                        # diagramming
brew install grammarly-desktop                  # grammarly
brew install --cask microsoft-office            # Word, Excel, PowerPoint, OneNote
brew install --cask google-drive                # file sync
brew install --cask marta                       # finder replacement

# Notes and knowledge management
brew install --cask obsidian
brew install --cask logseq
brew install --cask heptabase
brew install --cask nuclino

# Games
brew install --cask epic-games
brew install --cask gog-galaxy
brew install gogcli                             # GOG command-line client

brew tap jakehilborn/jakehilborn
brew install displayplacer                      # https://github.com/jakehilborn/displayplacer

brew install mas                                # app store cli - see ./post/app-store.sh

set -e

# todo - we need to document or script addition of extension
# React DevTools chrome extension https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi/related?hl=en
# grammarly
# getpocket
