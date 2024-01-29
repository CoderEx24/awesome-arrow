#!/usr/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
python install.py --clangd-completer --rust-completer --java-completer


