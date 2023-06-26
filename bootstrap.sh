#! /bin/bash

VIM_CONFIG_HOME=$HOME/.config/vim-minimal

NC='\033[0m'
error() {
  	color='\033[0;31m'
 	echo "${color}$1${NC} "
}
info() {
	color='\033[0;32m'
	echo "${color}$1${NC} "
}


mkdir -p $VIM_CONFIG_HOME/.backup $VIM_CONFIG_HOME/.undo $VIM_CONFIG_HOME/.tmp


ln -fs $VIM_CONFIG_HOME/init.vim $HOME/.vimrc && info "$file linked"



curl -fLo $VIM_CONFIG_HOME/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
