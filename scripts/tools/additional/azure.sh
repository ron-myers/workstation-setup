brew install azure-cli

echo "Now login with "
echo ""
echo "  az login"

# https://github.com/Azure/azure-functions-core-tools
echo "Installing  azure functions core tools"
brew tap azure/functions
brew install azure-functions-core-tools@4
brew link --overwrite azure-functions-core-tools@4
