# vim-configs

## Pre-requisites

* Python 3 (`brew install python`)
* Python 2 (`brew install python@2`)
* Neovim (Optional, `brew install neovim`)
* virtualenv for both python3 and python2:
  ```
  pip2 install virtualenv
  pip3 install virtualenv
  ```
  On Ubuntu you can use:
  ```
  apt-get install -y python3-venv
  pip install virtualenv
  ```

## Install

**_1._** Let's clone this repo! Clone to `~/.config/nvim`,
we'll also symlink it for Vim:

```sh
mkdir ~/.config
git clone git://github.com/rafi/vim-config.git ~/.config/nvim
ln -s ~/.config/nvim ~/.vim
```

- _Note:_ If your system sets `$XDG_CONFIG_HOME`,
  use that instead of `~/.config` in the code above.
  Nvim follows the XDG base-directories convention.

**_2._** If you are a _first-time Neovim user_, you need the pynvim
packages. Don't worry, run the script provided:

```sh
cd ~/.config/nvim
./venv.sh
```

**_3._** Run `make test` to test your nvim/vim version and compatibility.

**_4._** Run `make` to install all plugins.

