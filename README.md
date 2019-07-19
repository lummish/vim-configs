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

## Custom Mappings

| Key | Mode | Action |
|:--|:--:|:--|
| `,` | *All* | **Leader** |
| `<leader>ee` | Normal | Show fzf list of available colorschemes |
| `<leader>ea` | Normal | Open dialog to change Airline theme |
| `<leader>e1` | Normal | Switch to theme "dracula" |
| `<leader>e2` | Normal | Switch to theme "seoul256" |
| `<leader>e3` | Normal | Switch to theme "forgotten" |
| `<leader>e4` | Normal | Switch to theme "zazen" |
| `<leader>g` | Normal | Switch to distraction-free mode |
| `<leader>h` | Normal | Toggle rainbow parentheses |
| `<leader>l` | Normal, Visual | Toggle Limelight |
| `<leader>r` | Normal | Reload default source file |
| `<leader>t` | Normal | Trim whitespace |
| `<leader>w` | Normal | Toggle tagbar |
| `<leader>s` | Normal | Open a terminal in a horizontal split |
| `<leader>vs` | Normal | Open a terminal in a vertical split |
| `<leader>d` | Normal | Display pydocstring |
| `<leader>f` | Normal | Fuzzy find over files in working directory |
| `<leader><leader>` | Normal | Turn off highlighting |

### Plugin: coc.nvim

| Key | Mode | Action |
|:--|:--:|:--|
| `Tab` | Insert | Navigate forward in the completion list when present |
| `Shift`+`Tab` | Insert | Navigate backward in the completion list when present |
| `Ctrl`+`Space` | Insert | Trigger completion |
| `Enter` | Insert | Confirm completion |
| `[c` | Normal | Jump to location of previous item in the diagnostic list |
| `]c` | Normal | Jump to location of next item in the diagnostic list |
| `gd` | Normal | Jump to definition of symbol under cursor |
| `gy` | Normal | Jump to type definition of symbol under cursor |
| `gi` | Normal | Jump to implementation of symbol under cursor |
| `gr` | Normal | Jump to references of symbol under cursor |
| `K` | Normal | Show documentation in preview window |
| `<leader>rn` | Normal | Rename symbol under cursor |
| `<leader>f` | Normal, Visual | Format selected range |
| `<leader>a` | Normal, Visual | Get and run code actions on the selected region |
| `<leader>ac` | Normal | Get and run code action on the current line |
| `<leader>qf` | Normal | Autofix problem on current line |
| `Tab` | Normal, Visual | Select the next selection range (requires LSP support) |
| `Shift`+`Tab` | Visual | Select the previous selection range (requires LSP support) |
| `<space>a` | Normal | Show diagnostics list |
| `<space>e` | Normal | List coc extensions |
| `<space>c` | Normal | List coc commands |
| `<space>o` | Normal | List symbols of current document |
| `<space>s` | Normal | List symbols of current workspace |
| `<space>j` | Normal | Do default action for next item |
| `<space>k` | Normal | Do default action for previous item |
| `<space>p` | Normal | Resume latest coc list |
| `Ctrl`+`l` | Insert | Expand snippet |
| `Ctrl`+`j` | Visual, Select | Select text for visual placeholder of snippet |
| `Ctrl`+`j` | Normal | Jump to next placeholder in snippet |
| `Ctrl`+`k` | Normal | Jump to previous placeholder in snippet |
