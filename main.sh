#!/usr/bin/env bash

#-------------------[ - ]
apt-get install figlet -y
apt-get install lolcat -y
clear
figlet -c -f slant -t "Make-Banner" | lolcat
echo
#-------------------[ - ]
cd $HOME
echo -n -e "\e[1;34m>\e[0;37mDigite o nome que deve aparever em seu banner: \e[1;34m"
read -p "" _txtb
figlet -c -t "$_txtb" | lolcat >> .b.txt
echo -e "function banner() { cat $HOME/.b.txt ;}\nbanner" >> .bashrc
#-------------------[ - ]
