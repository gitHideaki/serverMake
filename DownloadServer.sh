#!/bin/bash
#
#This shellScript is for installing uTorrent for Download Server
#Download utserver for 64-bit system:
#
wget http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-ubuntu-13-04 -O utserver.tar.gz
#
#Install uTorrent sever to /opt/, and create symlink
sudo -- sh -c "tar -zxvf utserver.tar.gz -C /opt/"
sudo -- sh -c "chown root:root -R /opt/utorrent-server-alpha-v3_3/"
sudo -- sh -c "ln -nfs /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver"
#
#Install the required libssl library via command:
sudo -- sh -c "apt-get -y install libssl1.0.0 libssl-dev"
#
#Finally start uTorrent server:
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ &
#
#Then, open a browser and go to http://server-ip-address:8080/gui
#For the first login, type "admin" as username and leave the password box empty
