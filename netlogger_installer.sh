#!/bin/bash

printf "Make sure to run this script as sudo!\n\n"

printf "Downloading from repository...\n"
git clone https://github.com/zeko9381/netlogger
cd netlogger

printf "Installing nethogs-parser...\n"
mkdir -p /usr/lib/nethogs-parser
cp nethogs-parser/hogs.go /usr/lib/nethogs-parser/

printf "Installing the Netlogger script...\n"
mkdir -p /opt/netlogger
cp netlogger /opt/netlogger/

printf "Installing the systemd service and enabling it to run at startup...\n"
cp netlogger.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable netlogger.service
systemctl start netlogger.service

printf "Installing the netlogger-read script...\n"
cp netlogger-read /usr/bin/

printf "Creating log directory...\n"
mkdir -p /var/log/netlogger/

printf "Cleaning up...\n"
rm -r ../netlogger
