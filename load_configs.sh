#!/bin/bash

# Go to the home directory, download new config files and load them
cd ~
mv .tmux.conf .tmux.conf.bak
mv .inputrc .inputrc.bak
#mv .bashrc .bashrc.bak
mv .vimrc .vimrc.bak
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/tmux/.tmux.conf
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.inputrc
#wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bashrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/vim/.vimrc

echo "\[\e[1;32m\]┌──[\[\e[m\]\[\e[1;34m\]\D{%b/%d/%Y %-I:%M %p}\[\e[m\]\[\e[1;32m\]]─[\[\e[m\]\u\[\e[1;32m\]@\[\e[m\]\[\e[1;34m\]\h\[\e[m\]\[\e[1;32m\]]─[\[\e[m\]\w\[\e[1;32m\]]\n└──╼ $ \[\e[m\]\[\033[1;32m\]" >> ~/.bashrc
echo 'export PS1="$PS1\[\033[1;32m\]"' >> ~/.bashrc


install Tmux plug manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
