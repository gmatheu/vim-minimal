
FROM ubuntu:22.04

RUN apt update && apt install -yq vim git curl fzf && apt clean

ENV HOME /root
WORKDIR $HOME/.config
ADD . vim-minimal

WORKDIR $HOME/.config/vim-minimal
RUN ./bootstrap.sh
