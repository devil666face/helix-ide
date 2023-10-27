#!/bin/bash
read -p "Enter your main user " NON_ROOT_USER
cd /opt
wget https://github.com/Devil666face/helix-ide/releases/latest/download/helix-ide.tgz
rm -rf helix && tar -xf helix-ide.tgz && rm -rf helix-ide.tgz
chown -R $NON_ROOT_USER:$NON_ROOT_USER ./helix
cd helix
./init.sh
sudo -u $NON_ROOT_USER ./init.sh
