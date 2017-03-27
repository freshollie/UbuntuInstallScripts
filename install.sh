# Script to install some applications on trustylxde 


sudo apt-get -y install software-properties-common python-software-properties


# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Pycharm
sudo add-apt-repository -y ppa:mystic-mirage/pycharm

# Notepad QQ
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq

# Touchpad indicator
sudo add-apt-repository -y ppa:atareao/atareao 

# F.lux
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux

# Qbittorrent 
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable

# Codeblocks
sudo add-apt-repository -y ppa:damien-moore/codeblocks-stable

# Android adb and fastboot
sudo add-apt-repository -y ppa:nilarimogard/webupd8

# Java
sudo add-apt-repository ppa:openjdk-r/ppa

# Android studio
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make



sudo apt-get update

sudo apt-get -y install google-chrome-stable

sudo apt-get -y install pycharm

sudo apt-get -y install notepadqq

sudo apt-get -y install touchpad-indicator

sudo apt-get -y install fluxgui

sudo apt-get -y install qbittorrent

sudo apt-get -y install vlc

sudo apt-get -y install codeblocks

sudo apt-get -y install nano

sudo apt-get -y install g++

sudo apt-get -y install android-tools-adb android-tools-fastboot

sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install lib32stdc++6
sudo apt-get -y install ubuntu-make
sudo umake android android-studio

echo "@setxkbmap gb">>~/.config/lxsession/LXDE/autostart