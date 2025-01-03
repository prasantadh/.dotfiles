#!/bin/bash
set -e -x -u -o pipefail

sudo apt update && sudo apt -y dist-upgrade && sudo apt -y autoremove

# install dependencies
sudo apt install -y cmake gettext

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sed '/exec/d')"
zsh -c "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
sed -i 's/(git)/(git z zsh-autosuggestions)/' ~/.zshrc

#install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# installing a nerd font, adjust terminal pref and restart for effect
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip
unzip Hack.zip -d ~/.fonts
fc-cache -fv
rm Hack.zip

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

pip install pwntools bs4

# install neovim gdb
mkdir -p ~/.local/src
git clone https://github.com/neovim/neovim.git ~/.local/src/neovim
cd ~/.local/src/neovim
git checkout v0.10.3
make CMAKE_BUILD_TYPE=Release
sudo make install
cd

# install GEF
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

# install node from nodesource
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
rm nodesource_setup.sh

# some neovim dependencies
cargo install --locked tree-sitter-cli
cargo install --locked bottom
conda install -y -c conda-forge lazygit
curl -L https://github.com/dundee/gdu/releases/latest/download/gdu_linux_amd64.tgz | tar xz
chmod +x gdu_linux_amd64
sudo mv gdu_linux_amd64 /usr/bin/gdu

sudo apt install -y ripgrep vim-gtk3 gdb seclists nodejs 
echo "TODO: change emulation in terminal from default to linux"
echo "TODO: Prefix+I inside tmux to install plugins"
