echo
echo "Installing most recent version of OpenJDK"
brew install openjdk

# Configure opensjdk as instructed by 'brew info openjdk'
sudo ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
echo "export PATH=\"$(brew --prefix)/opt/openjdk/bin:\$PATH\"" >> ~/.zshenv
echo "export CPPFLAGS=\"-I$(brew --prefix)/opt/openjdk/include\"" >> ~/.zshenv

#tools 
brew tap jcgay/jcgay
brew install maven-deluxe
brew install gradle

brew tap spring-io/tap
brew install spring-boot

#source ${MY_DIR}/scripts/common/download-jetbrains-ide-prefs.sh
#pushd ~/workspace/jetbrains-ide-prefs/cli
#./bin/ide_prefs install --ide=intellij
#popd