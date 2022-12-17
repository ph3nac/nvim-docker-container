FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y software-properties-common

RUN add-apt-repository ppa:neovim-ppa/stable -y && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    build-essential \
    curl \
    git \
    locales \
    neovim \
    nodejs \
    npm \
    python3 \
    python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# reinstall latest node
RUN npm i -g n && \
    n latest && \
    apt-get purge nodejs npm -y

# config for multibyte char
RUN locale-gen en_US.UTF-8
ENV LANG="en_US.UTF-8" LANGUAGE="en_US:ja" LC_ALL="en_US.UTF-8"

# install pynvim for neovim provider
RUN pip3 install --upgrade pip

RUN pip3 install --upgrade pynvim



RUN npm install -g \
    neovim \
    yarn

ENV XDG_DATA_HOME=/root/.local/share
ENV XDG_CONFIG_HOME=/root/.config


COPY ./nvim /root/.config/nvim

# pyenv
ARG PYENV_ROOT
ENV PYENV_ROOT=$PYENV_ROOT
ENV PATH=$PYENV_ROOT/bin:$PATH

RUN echo '\neval "$(pyenv init -)"\neval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

ENTRYPOINT ["nvim"]