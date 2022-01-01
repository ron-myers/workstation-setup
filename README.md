# Workstation Setup

This project automates the process of setting up a new Mac OS X software development machine using simple [Bash](https://www.gnu.org/software/bash/) scripting. It heavily relies on [homebrew](https://brew.sh/).

## Original Version

This forked from [pivotal version](https://github.com/pivotal/workstation-setup/). Shout out to [the contributors](https://github.com/pivotal/workstation-setup/graphs/contributors) for all of thier efforts.

## Preparation

- Run the latest version of macOS unless you have a specific reason not to
- Install the latest version of [Xcode](https://developer.apple.com/xcode/)

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

## Additional tools

The original project allows you to pass an optional list of toolsets to install.  This version does not allow for that.  Instead if you want to add additional toolsets, run those scripts atomically(eg. golang):

```sh
source ./scripts/tools/golang.sh
```

The list of available tool scripts is within the `scripts/tools` folder.

## Other personal setup links

* [Dock Display Link support](https://www.synaptics.com/products/displaylink-graphics/downloads/macos-connectivity-1.6?filetype=exe)
