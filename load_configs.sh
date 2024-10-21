#!/bin/bash

# Go to the home directory, download new config files and load them
cd ~
mv .tmux.conf .tmux.conf.bak
mv .inputrc .inputrc.bak
mv .bashrc .bashrc.bak
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/tmux/.tmux.conf
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.inputrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bashrc

install Tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
