echo
echo "Installing Raycast"

brew install --cask raycast

echo
echo "Applying Raycast preferences"

# Only the portable preferences are set here. The analytics id, the window
# position cache and the panel frames are deliberately left out: they are
# per machine and identify this install.
defaults write com.raycast.macos raycast_OnboardingCompleted -bool true
defaults write com.raycast.macos raycast_WelcomeTosAccepted -bool true
defaults write com.raycast.macos raycast_ShowWindowsImmediately -bool false
defaults write com.raycast.macos raycast_WindowCacheMode_v2 -string "auto"

# Raycast keeps extensions, hotkeys, aliases, quicklinks, snippets and
# extension preferences in an encrypted local database, not in a plist. The
# only supported way to move them between machines is Raycast's own export.
#
#   Raycast -> Settings -> Advanced -> Export
#
# The export is a single .rayconfig file. Extension preferences are part of
# it, so it can contain API keys and access tokens for whatever extensions
# are configured, and snippets and quicklinks can contain personal data.
#
# Treat a .rayconfig as a secret:
#   - always set a password when Raycast offers one during export
#   - never commit it to this repository - *.rayconfig is in .gitignore
#   - move it between machines over a password manager or an encrypted drive
#
# To restore, drop the file somewhere local and point this at it:
RAYCAST_CONFIG="${RAYCAST_CONFIG:-$HOME/raycast.rayconfig}"

if [ -f "${RAYCAST_CONFIG}" ]; then
  echo "Found ${RAYCAST_CONFIG}, opening it in Raycast to import"
  echo "Raycast will prompt for the export password"
  open -a Raycast "${RAYCAST_CONFIG}"
  # `open` returns immediately, so wait here rather than letting the rest of
  # the setup scroll past behind the import dialog
  echo "Press return once the Raycast import has finished..."
  read -r
else
  echo "No Raycast export found at ${RAYCAST_CONFIG}"
  echo "Set RAYCAST_CONFIG to its path, or import by hand:"
  echo "  Raycast -> Settings -> Advanced -> Import"
fi
