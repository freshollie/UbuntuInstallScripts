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




sudo apt-get update

sudo apt-get -y install google-chrome-stable

sudo apt-get -y install pycharm

sudo apt-get -y install notepadqq

sudo apt-get -y install touchpad-indicator

sudo apt-get -y install fluxgui

sudo apt-get -y install qbittorrent

sudo apt-get -y install vlc

sudo apt-get -y install codeblocks

setxkbmap gb

passwd

#ricohkeyboardwallet
