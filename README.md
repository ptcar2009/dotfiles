# Pteco does dotfiles

spf13-vim inspired dotfiles, with local configurations and diversified files.

## Installation

Clone the repo and run the `bootstrap.sh` script from the repo folder.

```bash
git clone https://github.com/ptcar2009/dotfiles ~/.dotfiles && cd ~/.dotfiles
bash bootstrap.sh
```

The script will ask if you want to replace your local files with the files for the repo.
You can check the content of those files by looking at the `home` and `.config` folders.

The `home` folder contains configuration files that go into the home folder and the `.config` goes into the .config folder.
This is set up as symlinks, and it's recommended that you use `.local` files for adding any other configurations.

## Usage

The main `.zshrc` basically sources all the other `.zshrc` files. 

The `.zshrc.env` file contains environment settings, and sources the `.zshrc.path` file such that each line on the file is appended into the `PATH` variable.

The `.zshrc.aliases` file contains aliases and the `.zshrc.post` file does anything
that depends on any environment set beforehand, so it is sourced last.

It's recommended that you edit the files using `vim`, because they are specifically
set up to be orgainzed in a vim-friendly manner.

## Local configurations

All local configurations should be made on the `.local` files that are created on installation.
General configurations and configurations on the basic setup should be forked and maybe even eventually merged (any contributions are welcome).
