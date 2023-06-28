#! /bin/bash

VIM_CONFIG_HOME=$HOME/.config/vim-minimal

NC=''
error() {
  	color='[E] '
 	echo "${color}$1${NC} "
}
info() {
	color='[I] '
	echo "${color}$1${NC} "
}

if vim --cmd 'if v:version >= 801 | q | else | cq | fi' ; then
	mkdir -p $VIM_CONFIG_HOME/.backup $VIM_CONFIG_HOME/.undo $VIM_CONFIG_HOME/.tmp


	ln -fs $VIM_CONFIG_HOME/init.vim $HOME/.vimrc && info "init.vim linked to .vimrc"
	ln -fs $VIM_CONFIG_HOME  $HOME/.vim && info ".vim linked to .vim"

	curl -s -fLo $VIM_CONFIG_HOME/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && info "plug.vim created"

	vim +PlugClean +PlugInstall +PlugUpgrade +close +q  && info "Plugins installed/updated"
else
	error 'Vim 8.1 or greater required, sorry.'
fi
