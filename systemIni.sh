#!/bin/bash

# add heart beat to ssh connection
echo "start add heart beat to ssh connection"
echo ClientAliveInterval 30 >>/etc/ssh/sshd_config 2>&1 > /dev/null
echo ClientAliveCountMax 6 >> /etc/ssh/sshd_config 2>&1 > /dev/null

# change default ssh port
read -p "Input new ssh port:" sshPort
echo "start change default ssh port"
sed -i  "s/#Port 22/Port ${sshPort}/" /etc/ssh/sshd_config
sed -i  "s/Port \([0-9]\{2,\}\)/Port ${sshPort}/" /etc/ssh/sshd_config

# change vim setting
echo "set ts=2 sw=2"> /etc/vim/vimrc 1> /dev/null


echo"setting finished"
