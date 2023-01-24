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
EXPECTED_COMPOSER_CHECKSUM="$(curl https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_COMPOSER_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"
if [ "$EXPECTED_COMPOSER_CHECKSUM" != "$ACTUAL_COMPOSER_CHECKSUM" ]
then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit 1
fi
php composer-setup.php
rm composer-setup.php
sudo mkdir /usr/local/bin/
sudo mv composer.phar /usr/local/bin/composer

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

#Copy Font
cp ~/Dotfiles/fonts/FiraCode/*.ttf ~/Library/Fonts


echo '++++++++++++++++++++++++++++++'
echo '++++++++++++++++++++++++++++++'
echo 'All done!'

