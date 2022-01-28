#!/bin/bash

# Initial Update
sudo apt update

# Base system
#sudo apt install yaru-theme-icon -y
#sudo apt install adwaita-theme-icon -y
sudo apt install unzip nano git curl htop neofetch powertop sysstat lm-sensors minicom progress android-tools-adb -y
#sudo apt install lxterminal spacefm-gtk3
#sudo apt install terminator --no-install-recommends --no-install-suggests -y

# Network
sudo apt install openssh-server sshfs openvpn nmap net-tools -y

# Desktop tools
#sudo apt install synaptic apt-xapian-index conky solaar -y

# Phosh GUI tools
sudo apt install gparted xarchiver menulibre gnome-authenticator gnome-tweaks gnome-tweak-tool gnome-icon-theme gnome-calendar-mobile gnome-weather gnome-screenshot modem-manager-gui pavucontrol gnome-firmware -y

# Web
#sudo apt install firefox --no-install-recommends --no-install-suggests -y

# Build tools
#sudo apt install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev ocl-icd-opencl-dev gettext hwloc openssl numactl msr-tools geany -y

# Media
#sudo apt install lame mpv gthumb soundconverter -y

# Add me to any groups I might need to be a part of:
#sudo usermod -a -G video $USER

# Remove undesirable packages:
#sudo apt purge gstreamer1.0-fluendo-mp3 deja-dup shotwell popularity-contest -y

## Remove junk
sudo apt-get remove gnome-software gnome-software-common -y

# Spelling
sudo apt install aspell aspell-en -y
# go into gedit and select preferences >> spelling >> preferences >> highlight misspelled words

# Disable animations in Phosh
gsettings set org.gnome.desktop.interface enable-animations false

# Set "adaptive apps only" to "off"
gsettings set sm.puri.phosh app-filter-mode '[]'
# TUrn them back on
#gsettings set sm.puri.phosh app-filter-mode '["adaptive"]'

# Enableme experimental MMS in Chatty
gsettings set sm.puri.Chatty experimental-features true

#Enable fstrim
#sudo systemctl enable fstrim.timer
#sudo systemctl start fstrim.timer

# Clean Apt-Cache
sudo apt-get autoremove && sudo apt-get clean all && sudo apt-get autoclean all

## Disable Apport
#sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport

# Disable GDM Auto-Suspend (Gnome) When no User is logged in
#sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# Reboot Notification:
sudo apt update && sudo apt upgrade -y

echo $'\n'$"*** All done! Please reboot now. ***"
