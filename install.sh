# Script to install some applications on ubuntu 

DESKTOP=false
read -n1 -p "Desktop?(y, n): " doit 
echo""
case $doit in y|Y) DESKTOP=true;; *);; 
esac

sudo apt-get -y install software-properties-common python-software-properties

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Pycharm
sudo add-apt-repository -y ppa:mystic-mirage/pycharm

# Notepad QQ
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq

if [ $DESKTOP == false ]; then
    # Touchpad indicator
    sudo add-apt-repository -y ppa:atareao/atareao 
fi

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


if [DESKTOP == true]; then
    # Spotify
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    
fi


sudo apt-get update


sudo apt-get -y install google-chrome-stable

sudo apt-get -y install pycharm

sudo apt-get -y install notepadqq

# Laptop needs touchpad
if [DESKTOP == false]; then
    sudo apt-get -y install touchpad-indicator
fi

sudo apt-get -y install fluxgui

sudo apt-get -y install qbittorrent

sudo apt-get -y install vlc

sudo apt-get -y install codeblocks

sudo apt-get -y install nano

sudo apt-get -y install g++

if [DESKTOP == true]; then
    sudo apt-get -y install spotify-client
    
fi

WIRELESS_DRIVER=false
read -n1 -p "Wireless fix?(y, n): " doit 
echo""
case $doit in y|Y) WIRELESS_DRIVER=true;; *);; 
esac

if [WIRELESS_DRIVER == true]; then
    # TL-WN823N wireless driver
    sudo apt-get -y install git linux-headers-generic build-essential dkms
    git clone https://github.com/Mange/rtl8192eu-linux-driver.git
	sudo dkms install ./rtl8192eu-linux-driver
    git clone https://github.com/pvaret/rtl8192cu-fixes.git
    sudo modprobe -r rtl8xxxu
    sudo cp ./rtl8192cu-fixes/blacklist-native-rtl8192.conf /etc/modprobe.d/
fi

sudo apt-get -y install android-tools-adb android-tools-fastboot

sudo apt-get -y install oracle-java8-installer

# Desktop needs these set for AVD
if [ $DESKTOP == true ]; then
    gsettings set com.canonical.Unity.Launcher launcher-position Bottom
    sudo apt-get -y install lib32stdc++6 lib32z1
    sudo apt-get -y install libgl1-mesa-dev
    sudo echo "export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1">>$HOME/.profile
fi 

sudo apt-get -y install ubuntu-make
sudo umake android android-studio

# Desktop needs these set for AVD
if [ $DESKTOP == false ]; then
    echo "@setxkbmap gb">>~/.config/lxsession/LXDE/autostart
fi

sudo echo 'export PATH=$PATH:$HOME"/Android/sdk/platform-tools"' >> $HOME/.profile
sudo reboot
    
