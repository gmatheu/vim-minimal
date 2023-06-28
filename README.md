# vim-minimal

Bare minimum vim setup, targetting most of the useful features when accesing a remote server

# Requirements

* Vim 8.1 or greater

## Setup

```
curl -sL https://raw.githubusercontent.com/gmatheu/vim-minimal/master/install.sh | sh
```

or 

```
  export VIM_MINIMAL_HOME=~/.config/vim-minimal && \
  git clone https://github.com/gmatheu/vim-minimal.git ${VIM_MINIMAL_HOME} &&\
  cd ${VIM_MINIMAL_HOME} && \
  ./bootstrap.sh
```

## Upgrade

```
  export VIM_MINIMAL_HOME=~/.config/vim-minimal && \
  cd ${VIM_MINIMAL_HOME} && \
  git pull origin master && \
  ./bootstrap.sh
```
