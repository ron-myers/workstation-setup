#!/usr/bin/env bash

echo
echo "Installing utilities for unix development"

# Handy CLI tools
brew install autojump # navigation helper
brew install grc # colorize things
brew install coreutils # GNU core utilities
brew install watch # watch things
brew install direnv # unclutter your .profile

# For users of unixes
brew install pstree
brew install the_silver_searcher
brew install wget

# For developers of shell scripts
brew install jq # JSON utility

# Modern replacements for the classics
brew install bat # cat with syntax highlighting
brew install eza # modern ls
brew install exa # predecessor of eza, kept for older aliases
brew install ripgrep # fast recursive grep
brew install fzf # fuzzy finder
brew install zoxide # smarter cd
brew install tree # directory listings

# Shells, sessions and scripting
brew install tmux # terminal multiplexer
brew install shellcheck # shell script linter
brew install stress # load generator
brew install p7zip # 7-zip archives
brew install gnupg # signing and encryption

# Presentations from the terminal
brew install presenterm
brew install slides

# Misc helpers
brew install http-server # throwaway static file server
brew install dockutil # scripted Dock changes - see ./scripts/post/dock.sh
brew install summarize
