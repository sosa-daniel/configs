#!/bin/bash
PREV_PWD=$(pwd)
WDIR="$HOME/my_data"

cd $WDIR

# get preconfigured user_init file
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/htb-pwnbox/user_init --backups=1
chmod +x user_init

## get Powerline font for tmux theme
#mkdir -p fonts
#wget https://github.com/powerline/fonts/raw/master/Cousine/Cousine%20for%20Powerline.ttf -O "fonts/Cousine for Powerline.ttf"

# prepare home directory to preload in user_init
mkdir -p home
cd home

#wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bash_aliases
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/tmux/.tmux.conf
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.bashrc
wget https://raw.githubusercontent.com/sosa-daniel/configs/master/bash/.inputrc

## create RSA keypair for persistence over SSH
#mkdir -p .ssh
#ssh-keygen -t rsa -f .ssh/id_rsa

## get terminal settings export script
cd $WDIR
#wget https://raw.githubusercontent.com/sosa-daniel/configs/master/htb-pwnbox/export-mate-terminal.sh
#wget https://raw.githubusercontent.com/sosa-daniel/configs/master/htb-pwnbox/import-mate-terminal.sh
#chmod +x export-mate-terminal.sh
#chmod +x import-mate-terminal.sh

## get some tools
#git clone https://github.com/ffuf/ffuf $WDIR/tools/ffuf ; cd $WDIR/tools/ffuf ; go get ; go build

# return to the previous working directory
cd $PREV_PWD
