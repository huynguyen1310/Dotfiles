#!/bin/bash

# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

echo 'Install homebrew'
echo '----------------'
echo install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
 
# Install stow 
echo 'Install stow'
echo '-----------------'
brew install stow

# Install zsh
echo 'Install zsh'
echo '-----------------'
brew install zsh

# Install zplub 
echo 'Install zplug'
echo '-----------------'
brew install zplug
 
# Symlink zsh prefs
rm $HOME/.zshrc
stow zsh
zplug install
source ~/.zshrc

echo 'Install nvm'
echo '------------'
brew install nvm 


echo 'Install php'
echo '-----------'
brew tap shivammathur/php
brew install shivammathur/php/php@8.1
brew link --overwrite --force php@8.1

echo 'Install composer'
echo '----------------'
brew install composer

echo 'Install laravel valet'
echo '---------------------'
composer global require laravel/valet
valet install

echo 'Install yarn'
echo '------------'
brew install yarn

# Activate z
cd ~/Dotfiles/z
chmod +x z.sh

echo 'Install nvim'
echo '------------'
brew install neovim

echo 'Install AstroNvim'
echo '------------'
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
stow astroNvim 

echo 'Install docker'
echo '------------'
brew install docker

echo 'Install takeout'
echo '------------'
composer global require tightenco/takeout

echo 'Install tmux'
echo '------------'
brew install tmux
stow tmux

echo 'Install starship'
echo '------------'
brew install starship

echo 'Install alacritty'
echo '------------'
brew install --cask alacritty
stow alacritty

echo 'Install lazygit'
echo '------------'
brew install lazygit

echo 'Install hiddenbar'
echo '------------'
brew install --cask hiddenbar

echo 'Install rectangle'
echo '------------'
brew install --cask rectangle

echo 'Install insomnia'
echo '------------'
brew install --cask insomnia

echo 'Install rapidapi'
echo '------------'
brew install --cask rapidapi

echo 'Install httpie'
echo '------------'
brew install httpie

echo 'Install docker'
echo '------------'
brew install docker

echo 'Install docker-compose'
echo '------------'
brew install docker-compose


echo 'Install sourcetree'
echo '------------'
brew install --cask sourcetree

echo 'Install brave-browser'
echo '------------'
brew install --cask brave-browser

echo 'Install dbgate'
echo '------------'
brew install --cask dbgate

#Copy Font
cp ~/Dotfiles/fonts/FiraCode/*.ttf ~/Library/Fonts


echo '++++++++++++++++++++++++++++++'
echo '++++++++++++++++++++++++++++++'
echo 'All done!'

