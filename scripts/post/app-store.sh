#!/usr/bin/env bash
#
# Apps that are only distributed through the Mac App Store.
# Requires `mas`, installed by ./scripts/tools/general.sh.

# mas removed its `signin` and `account` subcommands - Apple stopped allowing
# App Store sign in from the command line. Sign in with App Store.app first.
echo "This needs you to be signed in to App Store.app already."
echo "Apps you have never obtained on this Apple account will be refused."

# Each app is independent, so one refusal should not stop the rest.
set +e

mas install 1091189122   # Bear
mas install 1482454543   # Twitter
mas install 1176895641   # Spark
mas install 1278508951   # Trello
mas install 973134470    # Be Focused
mas install 6444050820   # Draw Things
mas install 1418401222   # Friendly for Twitter
mas install 1474335294   # GoodLinks
mas install 985367838    # Microsoft Outlook
mas install 875319874    # Numerics
mas install 1477385213   # Save to Pocket
mas install 897118787    # Shazam
mas install 310633997    # WhatsApp

# Xcode is last: it is a ~10GB download, and mas often refuses it on accounts
# that have not installed it from the App Store before. If this fails, install
# it from the App Store by hand.
mas install 497799835    # Xcode

set -e
