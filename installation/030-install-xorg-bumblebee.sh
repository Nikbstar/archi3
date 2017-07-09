#!/bin/bash
set -e
#======================================================================================
#                                
# Author  : Erik Dubois at http://www.erikdubois.be
# License : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================

# if you are in a base system with no xserver and desktop...
# this will install xserver

echo "This is the opensource driver for intl+nvidia"

echo " Xserver setup"

sudo pacman -S xorg-server xorg-apps xorg-xinit xorg-twm xterm --noconfirm --needed
sudo pacman -S bumblebee mesa mesa-demos nvidia xf86-video-intel --noconfirm --needed
sudo pacman -S lib32-virtualgl lib32-nvidia-utils primus lib32-primus bbswitch --noconfirm --needed
sudo gpasswd -a nkotkin bumblebee
sudo systemctl enable bumblebeed.service

echo "################################################################"
echo "############             xorg installed             ############"
echo "############ sudo vim /etc/bumblebee/bumblebee.conf ############"
echo "############      find and set: Bridge=primus       ############"
echo "################################################################"

