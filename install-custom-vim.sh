#!/bin/bash

echo "Your existing .vimrc (if exists) will be saved as .vimrc_old"
mv .vimrc .vimrc_old
rm -rf .vimrc
echo "Downloading .vimrc from git"
wget https://raw.githubusercontent.com/iainrosen/vim/main/.vimrc -O ~/.vimrc
echo "Done. Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Running Plugin Install"
vim +PluginInstall +qall
echo "Done! Make sure to restart all ViM instances on your machine for changes to take effect."
