# UbuntuInstallScripts

## Ubuntu install instructions

These are instructions for future me on installing ubuntu 16.04 on my desktop as a dualboot with windows 10.

1. Load installer
2. When prompted about EUFI choose YES
3. Install
4. Ignore error message
5. Download boot-repair ubuntu (Google it)
6. Run boot repair
7. Click recomended
8. Follow on screen instructions
9. Ignore errors
10. Reboot
11. Boot ubuntu
12. `sudo grub-update`

Done. For your future self this has taken too many late nights to work out this process.

## Setup

`sudo apt-get install git`
`git clone http://github.com/freshollie/UbuntuInstallScripts.git`
`cd UbuntuInstallScripts`

Usage: `sudo ./setup (desktop || laptop) [work] [wirelessfix]`

E.g. `sudo ./setup desktop wirelessfix`

### Desktop

Install nearly all programs apart from mouse related programs (Chromebook mouse fix)

### Laptop

Doesn't install unneeded programs, mainly spotify

### Work

Doesn't install qbittorrent

## Details

### Installs

- Android Studio
- Visual Code
- Spotify
- Google chrome
- PyCharm
- NotepadQQ
- QbitTorrent
- VLC
- nano
- CodeBlocks
- g++
- Java
- curl
- Variety

### Sets up

- Ubuntu task bar position
- Screenshot keybindsings
- Wireless driver fix for my wireless usb
- Android tools to PATH
- Android emulator fixes for x64 ubuntu
