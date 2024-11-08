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
check_bin() {
  local bin=$1
  which $bin >/dev/null 2>&1 && \
    echo "true" || {
    error "$bin is not available"
    echo "false"
  }
}


install() {
    local exists=$(check_bin git)
    if [ "$exists" = "true" ]; then
      if [ ! -d "$VIM_CONFIG_HOME" ];
      then
        git clone https://github.com/gmatheu/vim-minimal.git "$VIM_CONFIG_HOME" || {
        echo 'Could not clone repository'
        exit 1
      }
      fi
    fi
    cd $VIM_CONFIG_HOME && ./bootstrap.sh
}

install
