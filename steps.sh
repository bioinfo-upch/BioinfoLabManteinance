#Written by BSc. Gabriel Jimenez-Avalos for the Zimic-Sheen lab
#This script repairs hash sum missmatches and properly install and configure nvidia-drivers
#Repair Sum Missmatches
sudo rm -rf /var/lib/apt/lists/partial
sudo apt-get update -o Acquire::CompressionTypes::Order::=gz

#Update&Upgrade
sudo apt-get --allow-unauthenticated update
sudo apt-get --allow-unauthenticated dist-upgrade
sudo apt-get --allow-unauthenticated upgrade

#GraphicRepository
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo --allow-unauthenticated update
sudo ubuntu-drivers autoinstall

#DisableNouveau
sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"

#Final
sudo reboot
