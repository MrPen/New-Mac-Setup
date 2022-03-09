#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$S" || exit
done 2>/dev/null &

# Setup Finder Commands
# Show Library Folder in Finder
chflags nohidden ~/Library

# Show Hidden Files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Show Path Bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status Bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Check for Homebrew, and then install it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Homebrew installed successfully"
else
  echo "Homebrew already installed!"
fi

# Install XCode Command Line Tools
echo "Checking to see if XCode Command Line Tools are installed..."
brew config

# Updating Homebrew
echo "Updating Homebrew..."
brew update

# Upgrade any already-installed formulae
echo "Upgrading Homebrew..."
brew upgrade

# Update the Terminal
# Install Git
echo "Installing Git..."
brew install git

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Need to logout now to start the new SHELL..."
logout

# Install Powerline fonts
echo "Installing Powerline fonts..."
git clone https://github.com/powerline/fonts.git
cd fonts || exit
sh -c ./install.sh
cd ..
rm -rf fonts

# Install Powerlevel10k and addons
echo "Installing Powerlevel10k theme..."
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
brew install zsh-syntax-highlighting

# Install Brew usefull formulae
echo "Installing some usefull command line tools..."
brew install ansible
brew install awscli
brew install eksctl
brew install flux
brew install fping
brew install helm
brew install jq
brew install k9s
brew install kubectx
brew install kubernetes-cli
brew install kubeval
brew install kustomize
brew install pre-commit
brew install pyenv
brew install speedtest
brew install sslscan
brew install tfenv
brew install tfswitch
brew install tree

# Install Brew casks
echo "Install some usefull apps"
brew install --cask --appdir="/Applications" 1password
brew install --cask --appdir="/Applications" docker
brew install --cask --appdir="/Applications" drawio
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" iterm2
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" lens
brew install --cask --appdir="/Applications" messenger
brew install --cask --appdir="/Applications" microsoft-office
brew install --cask --appdir="/Applications" microsoft-teams
brew install --cask --appdir="/Applications" rectangle-pro
brew install --cask --appdir="/Applications" signal
brew install --cask --appdir="/Applications" spotify
brew install --cask --appdir="/Applications" visual-studio-code
brew install --cask --appdir="/Applications" zoom