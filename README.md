# Windows subsystem for Linux development setup

This repository contains code that provisions a bare bone WLS installation with tools listed below:

* Clang
* Cython
* Docker (in client mode)
* git
* golang
* heroku cli
* oracle java8
* node
* python
* rust
* vim + ultimate-vim setup
* zsh + oh-my-zsh

On top of that various customaizations are done to:
* Start an ssh agent & load keys from ~/.ssh on startup
* Fix shell syntax higlighting.

## Before you start

Download & install a decent shell application:
* https://hyper.is/
* https://github.com/goreliu/wsl-terminal

Download & install docker for Windows. Linux version will connect to it through `DOCKCER_HOST`.

If you want a nice font please try [Hack](http://sourcefoundry.org/hack/).

## Provisioning

Scripts in this repositroy depend on [SaltStack](https://saltstack.com/).
Please install it by executing the command below:

```bash
wget -qO- https://bootstrap.saltstack.com | sudo sh -s -- -P -d git develop
```

Fill out templating info:

```bash
cp states/vars.template states/vars
vim states/vars
```

Once done, run saltstack:

```bash
sudo salt-call --local --file-root=./states state.highstate
```

Please wait for the scipts to do their work. This should take around 5 mins.

## Profit!