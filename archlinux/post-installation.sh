#!/bin/sh

# Common general recommendations actions to do after 
# install Arch Linux distribution

# Creating default user
USER=$1
#useradd -m $USER 
#gpasswd -a lp docker bumblebee wheel

# Changing default shell
#chsh -s /usr/bin/zsh # current user: root
#chsh -s /usr/bin/zsh $USER

# Enabling services
#systemctl enable ntpd
#systemctl enable bumblebeed

# Defining user password
#passwd $USER 

echo "hey this is the user: " $USER

