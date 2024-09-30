# Common deps
sudo apt install curl git make ninja-build gettext cmake unzip curl build-essential ripgrep xclip

# Make dev tools folder
mkdir -p ~/development/tools

# Neovim
git clone https://github.com/neovim/neovim ~/development/tools/neovim
cd ~/development/tools/neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
git checkout master
cd ~
# Kickstart modular
git clone https://github.com/HarrisonGagnon/kickstart-modular.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
# Set as default editor
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/nvim 100

# Oh My bash
git clone https://github.com/HarrisonGagnon/oh-my-bash.git ~/development/tools/omb
cd ~/development/tools/omb/tools
bash install.sh
cd ~

# Tmux
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/HarrisonGagnon/tmux_config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/tmux

# Themes
# TODO: Add font and set as default
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.3.0/install.py | python3 -
