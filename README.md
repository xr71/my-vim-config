# my-vim-config

This is a synced record of my VIM confirgurations in .vimrc

Make sure to set up correctly by also installing Vundle:

```
Set up Vundle:

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Sourced from: https://github.com/VundleVim/Vundle.vim

### Set up for NeoVim

Create a file at:
`~/.config/nvim/init.vim`

Place the following in that file:

```
set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc
```
