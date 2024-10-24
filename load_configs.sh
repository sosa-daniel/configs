#!/bin/bash

# Go to the home directory, download new config files and load them
cd ~
mv .tmux.conf .tmux.conf.bak
mv .inputrc .inputrc.bak
mv .bashrc .bashrc.bak
mv .vimrc .vimrc.bak
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/tmux/.tmux.conf
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.inputrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bashrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/vim/.vimrc



install Tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
