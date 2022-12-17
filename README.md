# ph3nac-neovim

This is Container image for building my own neovim development environment

This is a customized version of https://github.com/s10akir/moja-nvim

## Usage

### for MacOS(Docker Desktop for Mac)

#### Installation

```sh
$ docker compose build
```

- optional

If you want to persist files in . /plugged and . /coc if you want to persist files in .

```sh
$ docker compose run --rm nvim
```

at nvim

```
:PlugInstall
:CocInstall
```

#### Use Nvim

add alias to shell config file such as .zshrc

```
alias ph3vim='docker run --rm -it -v ${HOME}:${HOME}:cached --workdir=$(pwd) ph3nac/neovim/mac'
```

---

### for Linux

#### Installation

```sh
$ git switch linux
$ docker compose build
```

- optional

If you want to persist files in . /plugged and . /coc if you want to persist files in .

```sh
$ DOCKER_USER=$UID:$GID docker compose run --rm nvim
```

at nvim

```
:PlugInstall
:CocInstall
```

#### Use Nvim

add alias to shell config file such as .zshrc

```sh
alias ph3vim='docker run --rm -it -u $(id -u):$(id -g) -e HOME=/root -v ${HOME}:${HOME}:cached --workdir=$(pwd) ph3nac/neovim/linux'
```
