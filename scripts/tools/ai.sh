# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing AI assistants and coding agents"

# Command line agents
brew install codex                              # OpenAI Codex CLI
brew install gemini-cli                         # Google Gemini CLI
brew install mcp-publisher                      # publish MCP servers

# Desktop assistants
brew install --cask claude
brew install --cask chatgpt
brew install --cask chatbox
brew install --cask grok-bot
brew install --cask superwhisper                # local speech to text

# Agentic editors and workbenches
brew install --cask antigravity
brew install --cask conductor
brew install --cask repo-prompt
brew install --cask onlook                      # visual editor for React apps
brew install --cask codux                       # visual editor for React apps
brew install --cask monocle-app

# Local model runtimes
brew install ollama                             # ollama server and CLI
brew install --cask ollama-app                  # ollama desktop app

set -e
