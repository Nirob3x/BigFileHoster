#!/bin/bash

clear 
echo " "
echo " "  

echo "███╗░░██╗██╗██████╗░░█████╗░██████╗░██████╗░██╗░░██╗ "
echo "████╗░██║██║██╔══██╗██╔══██╗██╔══██╗╚════██╗╚██╗██╔╝ "
echo "██╔██╗██║██║██████╔╝██║░░██║██████╦╝░█████╔╝░╚███╔╝░ "
echo "██║╚████║██║██╔══██╗██║░░██║██╔══██╗░╚═══██╗░██╔██╗░ "
echo "██║░╚███║██║██║░░██║╚█████╔╝██████╦╝██████╔╝██╔╝╚██╗ "
echo "╚═╝░░╚══╝╚═╝╚═╝░░╚═╝░╚════╝░╚═════╝░╚═════╝░╚═╝░░╚═╝ "

echo "Big File Hoster By Nirob3x" 


apt-get update -y
apt-get install apache2 -y
sudo apt-get install ntfs-3g -y
mkfs.ext4 /dev/sda
echo "/dev/sda    /var/www/html    ext4    defaults    0    0" >> /etc/fstab
mount /var/www/html
apt-get install unzip -y
apt-get install php -y
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.0-fpm
sudo service apache2 restart
cd /var/www/html
wget http://nirob.info/i.zip
unzip i.zip

echo "=========================DONE=============================="





