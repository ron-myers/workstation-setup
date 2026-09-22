# Workstation Setup

This project automates the process of setting up a new Mac OS X software development machine using simple [Bash](https://www.gnu.org/software/bash/) scripting. It heavily relies on [homebrew](https://brew.sh/).

## Original Version

This forked from [pivotal version](https://github.com/pivotal/workstation-setup/). Shout out to [the contributors](https://github.com/pivotal/workstation-setup/graphs/contributors) for all of thier efforts.

## Preparation

- Run the latest version of macOS unless you have a specific reason not to.

## Setup and execution
Open up `Terminal.app` and run the following command:

```sh
mkdir -p ~/workspace &&
  cd ~/workspace &&
  git clone https://github.com/ron-myers/workstation-setup.git &&
  cd workstation-setup
```

**Note:** This might prompt you to install the latest Xcode command line development tools. Please do so if prompted. 
**Warning: this tool might overwrite existing configurations.**

```sh
./setup.sh
```

## App Store

To automate installation from the [app store](https://www.apple.com/app-store/), we use [mas](https://github.com/mas-cli/mas).

`mas` can no longer sign you in - Apple removed command line sign in, and the
`mas signin` subcommand went with it. Sign in with `App Store.app` first, then:

```sh
./scripts/post/app-store.sh
```

to install the apps. `mas install` only works for apps the signed in Apple
account has obtained before, so anything new has to be got from the App Store
once by hand.

## What gets installed

`./setup.sh` installs the baseline: homebrew, oh-my-zsh, git configuration, macOS defaults, and then the toolsets in `scripts/tools`:

| Script | Contents |
| --- | --- |
| `ai.sh` | Coding agents and AI assistants: Claude, ChatGPT, Codex, Gemini CLI, Antigravity, Conductor, Ollama |
| `developer-utilities.sh` | Dash, Postman, Bruno, DataGrip, Fork, GitHub Desktop, ngrok, GitHub CLI |
| `docker.sh` | Docker Desktop and shell completion |
| `dotnet.sh` | .NET SDKs, Rider, PowerShell, Pulumi and the global dotnet tools |
| `editors.sh` | VS Code, Zed, Cursor, Sublime Text, MacDown, Emacs, JetBrains Toolbox |
| `fonts.sh` | Atkinson Hyperlegible, OpenDyslexic, League Spartan |
| `general.sh` | Browsers, chat, calendars, notes, media and the everyday desktop apps |
| `node.sh` | Node, nvm, pnpm and the global npm packages |
| `raycast.sh` | Raycast, its portable preferences, and the `.rayconfig` import - see [Raycast](#raycast) |
| `unix.sh` | Command line tools: ripgrep, bat, eza, fzf, zoxide, tmux, jq, gnupg and friends |
| `vscode-extensions.sh` | The VS Code extension set |

Applications with no homebrew cask are listed by `scripts/post/manual-steps.sh` at the end of the run.

## Additional tools

The original project allows you to pass an optional list of toolsets to install.  This version does not allow for that.  Instead if you want to add additional toolsets, run those scripts atomically(eg. golang):

```sh
source ./scripts/tools/additional/adobe.sh
```

```sh
source ./scripts/tools/additional/aws.sh
```

```sh
source ./scripts/tools/additional/azure.sh
```

```sh
source ./scripts/tools/additional/c.sh
```

```sh
source ./scripts/tools/additional/golang.sh
```

```sh
source ./scripts/tools/additional/images.sh
```

```sh
source ./scripts/tools/additional/ios.sh
```

```sh
source ./scripts/tools/additional/java.sh
```

```sh
source ./scripts/tools/additional/kubernetes.sh
```

```sh
source ./scripts/tools/additional/livekit.sh
```

```sh
source ./scripts/tools/additional/machine-learning.sh
```

```sh
source ./scripts/tools/additional/mongo.sh
```

```sh
source ./scripts/tools/additional/music.sh
```

```sh
source ./scripts/tools/additional/pascal.sh
```

```sh
source ./scripts/tools/additional/postgres.sh
```

```sh
source ./scripts/tools/additional/python.sh
```

```sh
source ./scripts/tools/additional/redis.sh
```

```sh
source ./scripts/tools/additional/ruby.sh
```

```sh
source ./scripts/tools/additional/rust.sh
```

```sh
source ./scripts/tools/additional/shopify.sh
```

```sh
source ./scripts/tools/additional/stripe.sh
```

```sh
source ./scripts/tools/additional/supabase.sh
```

```sh
source ./scripts/tools/additional/twilio.sh
```

```sh
source ./scripts/tools/additional/video.sh
```

The list of available tool scripts is within the `scripts/tools` folder.

## Raycast

`scripts/tools/raycast.sh` installs Raycast and sets the portable preferences.

Everything else - extensions, hotkeys, aliases, quicklinks, snippets and extension preferences - lives in Raycast's encrypted local database, so it can only move between machines through Raycast's own export:

1. On the old machine: **Raycast -> Settings -> Advanced -> Export**, and set a password when prompted.
2. Carry the `.rayconfig` file across in a password manager or on an encrypted drive.
3. On the new machine, either drop it at `~/raycast.rayconfig` before running the script, or point the script at it:

```sh
RAYCAST_CONFIG=/path/to/raycast.rayconfig source ./scripts/tools/raycast.sh
```

**Do not commit a `.rayconfig` to this repository.** Extension preferences are part of the export, so it can hold API keys and access tokens, and snippets and quicklinks can hold personal data. `*.rayconfig` is in `.gitignore` to stop that happening by accident.

## Other personal setup links

* [Dock Display Link support](https://www.synaptics.com/products/displaylink-graphics/downloads/macos-connectivity-1.6?filetype=exe)
