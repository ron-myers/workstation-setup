brew tap twilio/brew 
brew install twilio

twilio plugins:install @twilio-labs/plugin-serverless
twilio plugins:install @twilio-labs/plugin-watch

twilio autocomplete zsh

printf "eval $(twilio autocomplete:script zsh)" >> ~/.zshrc; source ~/.zshrc

echo "*************************************************************************"
echo "*                                                                       *"
echo "* To get started, please create a twilio-cli profile:                   *"
echo "*                                                                       *"
echo "*     twilio login                                                      *"
echo "*                                                                       *"
echo "*     OR                                                                *"
echo "*                                                                       *"
echo "*     twilio profiles:create                                            *"
echo "*                                                                       *"
echo "*************************************************************************"
