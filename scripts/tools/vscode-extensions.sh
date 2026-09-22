echo
echo "Installing Visual Studio Code extensions"

if ! command -v code >/dev/null 2>&1; then
  echo "The 'code' command is not available, skipping extensions"
  echo "It ships with the visual-studio-code cask - see ./scripts/tools/editors.sh"
  return 0 2>/dev/null || exit 0
fi

# One extension failing should not stop the rest
set +e

extensions=(
  alecclarkedev.to-typescript
  alefragnani.pascal
  anthropic.claude-code
  bradlc.vscode-tailwindcss
  chakrounanas.turbo-console-log
  dbaeumer.vscode-eslint
  eamodio.gitlens
  esbenp.prettier-vscode
  formulahendry.auto-close-tag
  formulahendry.auto-rename-tag
  fwcd.kotlin
  gruntfuggly.todo-tree
  integromat.apps-sdk
  lokalise.i18n-ally
  mikestead.dotenv
  ms-azuretools.vscode-containers
  ms-azuretools.vscode-docker
  ms-python.debugpy
  ms-python.isort
  ms-python.python
  ms-python.vscode-pylance
  ms-python.vscode-python-envs
  ms-toolsai.jupyter
  ms-toolsai.jupyter-keymap
  ms-toolsai.jupyter-renderers
  ms-toolsai.vscode-jupyter-cell-tags
  ms-toolsai.vscode-jupyter-slideshow
  ms-vscode-remote.remote-containers
  ms-vscode.azure-repos
  ms-vscode.powershell
  ms-vscode.remote-repositories
  runem.lit-plugin
  streetsidesoftware.code-spell-checker
  trelent.trelent
  vstirbu.vscode-mermaid-preview
  vue.volar
  wesbos.theme-cobalt2
  withfig.fig
  wosi.omnipascal
  yoavbls.pretty-ts-errors
)

for extension in "${extensions[@]}"; do
  code --install-extension "${extension}" --force
done

set -e
