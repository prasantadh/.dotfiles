#!/bin/bash
set -e -x -u -o pipefail

sudo apt -y update 
sudo apt -y dist-upgrade
sudo apt -y autoremove

# auto install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sed '/exec/d')"
# install some needed zsh plugins, nerd fonts and powerlevel10k
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip

# install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rust-init.sh
chmod +x rust-init.sh
./rust-init.sh -y
eval "$(cat $HOME/.cargo/env)"
which cargo
rm ./rust-init.sh

# install miniconda
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -u -p ~/.miniconda3
rm ~/miniconda.sh
~/.miniconda3/bin/conda init zsh
~/.miniconda3/bin/conda init bash
eval "$(cat ~/.bashrc | tail -n +15)"

pip install pwntools

# install neovim gdb
sudo apt install -y neovim gdb
# install GEF
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

# install node from nodesource
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install -y nodejs
rm nodesource_setup.sh

# TODO may be install other kali stuff
# like bloodhound, seclists
