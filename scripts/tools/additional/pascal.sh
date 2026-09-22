echo
echo "Installing Pascal developer tools"

brew install fpc                                # Free Pascal compiler
brew install --cask lazarus                     # Free Pascal IDE

# VS Code support is installed by ./scripts/tools/vscode-extensions.sh
# (alefragnani.pascal and wosi.omnipascal)
