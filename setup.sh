#!/bin/bash

# Initial Update
sudo apt update

# Xorg
sudo apt install xserver-xorg-core libxinerama-dev libfontconfig1-dev libharfbuzz-dev xorg-dev x11-xserver-utils xterm xserver-xorg-input-all -y
sudo apt install xinit --no-install-recommends --no-install-suggests -y

# Firmware (for AMDGPU/ucode/wifi)
sudo apt install firmware-linux llvm clang -y
sudo apt install amd64-microcode -y
#sudo apt install intel-microcode -y
#sudo apt install firmware-iwlwifi -y

# Base system
#sudo apt install yaru-theme-icon -y
#sudo apt install adwaita-theme-icon -y
sudo apt install gparted lxterminal spacefm-gtk3 unzip xarchiver nano nnn -y
sudo apt install git curl htop spell neofetch powertop sysstat lm-sensors -y
sudo apt install terminator --no-install-recommends --no-install-suggests -y

# DWM
sudo apt install fonts-hack fonts-powerline compton lxrandr nitrogen stalonetray -y

# Greeter
#sudo apt install lightdm lightdm-gtk-greeter --no-install-recommends --no-install-suggests -y

# Network
sudo apt install openssh-server sshfs openvpn nmap net-tools -y

# Desktop tools
#sudo apt install synaptic apt-xapian-index conky solaar -y

# Gnome
#sudo apt install gnome-tweaks gnome-tweak-tool gnome-icon-theme dconf-editor chrome-gnome-shell solaar-gnome3 -y

# Web
#sudo apt install openjdk-11-jre flashplugin-installer transmission tor -y
sudo apt install firefox --no-install-recommends --no-install-suggests -y

# Build tools
sudo apt install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev ocl-icd-opencl-dev gettext hwloc openssl numactl msr-tools geany -y

# Coreboot
#sudo apt install python gnat flex bison libncurses5-dev wget zlib1g-dev acpica-tools -y

# Media
#sudo apt install lame mpv vlc gthumb audacity soundconverter nextcloud-desktop gimp scribus -y

# Virtualization
#sudo apt install virtualbox virtualbox-guest-additions-iso virtualbox-ext-pack -y
#sudo usermod -a -G vboxusers $USER

# Other
#sudo apt install flatpak gnome-software-plugin-flatpak qt5-style-plugins furiusisomount timeshift chromium-browser -y

# Add and Install PPAs
#sudo add-apt-repository ppa:yannubuntu/boot-repair
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
#sudo add-apt-repository ppa:mkusb/ppa
#sudo add-apt-repository ppa:gezakovacs/ppa
#sudo apt-get update -y
#sudo apt-get install -y boot-repair grub-customizer
#sudo apt-get install -y mkusb mkusb-nox unetbootin

# Add me to any groups I might need to be a part of:
sudo usermod -a -G video $USER

# Remove undesirable packages:
#sudo apt purge gstreamer1.0-fluendo-mp3 deja-dup shotwell popularity-contest -y

# Remove Assorted Arabic/Asian language font types
#sudo apt purge ttf-arabeyes ttf-arphic-uming ttf-indic-fonts-core ttf-kochi-gothic ttf-kochi-mincho ttf-lao ttf-malayalam-fonts ttf-thai-tlwg ttf-unfonts-core -y

#Remove dial up et al
#sudo apt purge ppp pppconfig pppoeconf -y

#Remove Gnome games
#sudo apt purge gnome-games gnome-games-data gnome-cards-data aisleriot gnome-mahjongg gnome-mines gnome-sudoku -y

#Add flathub repo
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#fix window buttons
#gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

#set icons to minimize on click
#gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

#move apps button to top
#gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top 'on'

## Remove junk
#sudo apt-get remove rhythmbox -y

# Clean Apt-Cache
sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all

## Disable Apport
#sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

# Disable GDM Auto-Suspend (Gnome) When no User is logged in
#sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Reboot Notification:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
