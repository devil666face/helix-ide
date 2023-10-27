#!/bin/bash
NON_ROOT_USER=$USER
cd /opt
sudo wget https://github.com/Devil666face/helix-ide/releases/latest
sudo rm -rf helix && sudo tar -xf helix-ide.tgz && sudo rm -rf helix-ide.tgz
sudo chown -R $NON_ROOT_USER:$NON_ROOT_USER ./helix
cd helix
sudo chmod +x init.sh
sudo ./init.sh
./init.sh
