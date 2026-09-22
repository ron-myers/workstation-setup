echo
echo "Installing PostgreSQL tooling"

brew install --cask postgres-app                # PostgreSQL server as a menubar app
brew install --cask pgadmin4                    # admin GUI
brew install libpq                              # psql and friends without a local server
