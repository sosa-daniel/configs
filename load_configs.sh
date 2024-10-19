#!/bin/bash

# Go to the home directory, download new config files and load them
cd ~
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/tmux/.tmux.conf
rm ~/.bashrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.inputrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bashrc

install Tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
