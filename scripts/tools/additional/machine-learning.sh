echo
echo "Installing machine learning tools"

# Apple silicon array framework
brew install mlx
brew install mlx-c

# Speech to text
brew install whisper-cpp

# Local model runtimes are installed by ./scripts/tools/ai.sh

# Notebooks and environments
brew install --cask anaconda
# pipx is installed by ./scripts/tools/additional/python.sh

# Image generation
brew install --cask diffusionbee

# Draw Things is App Store only - see ./scripts/post/app-store.sh
