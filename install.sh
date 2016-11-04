# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Pycharm
sudo add-apt-repository --yes ppa:mystic-mirage/pycharm

# Notepad QQ
sudo add-apt-repository --yes ppa:notepadqq-team/notepadqq

# Touchpad indicator
sudo add-apt-repository --yes ppa:atareao/atareao 

# F.lux
sudo add-apt-repository --yes ppa:nathan-renniewaldock/flux

# Qbittorrent 
sudo add-apt-repository --yes ppa:qbittorrent-team/qbittorrent-stable

# Codeblocks
sudo add-apt-repository --yes ppa:damien-moore/codeblocks-stable




sudo apt-get update

sudo apt-get --yes --force-yes install google-chrome-stable

sudo apt-get --yes --force-yes install pycharm

sudo apt-get --yes --force-yes install notepadqq

sudo apt-get --yes --force-yes install touchpad-indicator

sudo apt-get --yes --force-yes install fluxgui

sudo apt-get --yes --force-yes install qbittorrent

sudo apt-get --yes --force-yes install vlc

sudo apt-get --yes --force-yes install codeblocks