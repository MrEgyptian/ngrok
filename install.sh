#!/bin/bash

#selecting arch
arch=$(dpkg --print-architecture)
#selecting commands
update="apt update -y >/dev/null"
upgrade="apt upgrade -y >/dev/null"
iwget="apt install wget zip unzip figlet -y"
#simple condition sentence
require(){
	eval $update
	eval $upgrade
	eval $iwget
}
echo -e """\033[93m
____▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄_
───█▒▒░░░░░░░░░▒▒█───
────█░░█░░░░░█░░█────
─▄▄──█░░░▀█▀░░░█──▄▄─
█░░█─▀▄░░░░░░░▄▀─█░░█
█▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
█-# coded by Ahmed   █
█#\033[92mW/A:+201150119895  \033[93m█
█  \033[91mngrok installer\033[93m   █
█▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

"""
sleep 5
if [ $arch == 'aarch64' ]
then 
echo -e "\033[92m"
figlet "ngrok"
echo -e "\033[94m"
figlet "for"
echo -e "\033[95m"
figlet $arch
sleep 3
echo -e "\033[92m[•] \033[93mInstalling the requirements... "
require
wget "https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip"
unzip "ngrok-2.2.8-linux-arm64.zip"
chmod 777 ngrok
else 
figlet "ngrok"                                                                                    18 figlet "for"
figlet $arch
echo -e "\033[92m[•] \033[93mInstalling the requirements... "
require 
unzip ngrok-stable-linux-arm.zip
wget "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip"
chmod 777 ngrok
fi
echo -e """\033[92m 
ngrok has been installed successfully 
YouTube:\033[91mhttps://www.youtube.com/channel/UC4A8Npg7zYgc1LqqHvULKSQ
"""
