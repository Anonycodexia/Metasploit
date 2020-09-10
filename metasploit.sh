#!/bin/bash
clear
figlet metasploit
echo "Enter your name"
read name
echo "Nice to meet you mr.$name"
sleep 2
echo "Choose your android version mr.$name"
echo "1==>less than android version 6"
echo "2==>greater than android version 5"
read version
if [ $version == 1 ]; then
echo "installing metasploit"
sleep 2
pkg install curl wget 
echo "dependencies installed."
sleep 1
curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
sleep 1
gunzip metasploit_5.0.65-1_all.deb.gz
sleep 1
dpkg -i metasploit_5.0.65-1_all.deb
sleep 1
apt -f install
exit
else
echo "installing metasploit"
sleep 2
pkg install unstable-repo metasploit
fi