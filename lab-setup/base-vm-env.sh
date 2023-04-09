#!/bin/bash 

echo "Installing various tools ..."

#------------------------------------------------
# Networking Tools

sudo apt -y install curl
sudo apt -y install traceroute
sudo apt -y install telnetd
sudo apt -y install openbsd-inetd
sudo apt -y install vsftpd
# sudo apt -y install openssh-server

# net-tools include arp, ifconfig, netstat, route etc.
sudo apt -y install net-tools

# For Firewalls lab
# sudo apt -y install conntrack

# For DNS
sudo apt -y install resolvconf

#------------------------------------------------
# Utilities
sudo apt -y install vim
sudo apt -y install whois
sudo apt -y install zsh
sudo apt -y install git
# Ubuntu Linux 的 十六進位(hex)編輯器 like PC Tools
#sudo apt -y install bless
# pseudorandom number sequence test program
#sudo apt -y install ent
#sudo apt -y install execstack
#sudo apt -y install gcc-multilib
#sudo apt -y install ghex
#sudo apt -y install libpcap-dev
#sudo apt -y install nasm

# Install vscode 如果有裝 Desktop 才用得着安裝 
# sudo snap install --classic code
