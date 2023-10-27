#!/bin/bash
NON_ROOT_USER=$USER
sudo su
cd /opt
wget https://github.com/Devil666face/helix-ide/releases/latest
rm -rf helix && tar -xf helix-ide.tgz && rm -rf helix-ide.tgz
chown -R $NON_ROOT_USER:$NON_ROOT_USER ./helix
cd helix
chmod +x init.sh
./init.sh
su $NON_ROOT_USER
./init.sh
