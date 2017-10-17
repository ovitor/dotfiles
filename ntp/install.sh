#!/bin/bash
sudo echo "server a.ntp.br" > /etc/ntp.conf
sudo echo "server b.ntp.br" >> /etc/ntp.conf
sudo echo "server c.ntp.br" >> /etc/ntp.conf
sudo echo "server gps.ntp.br" >> /etc/ntp.conf
sudo echo "server a.st1.ntp.br" >> /etc/ntp.conf
sudo echo "server b.st1.ntp.br" >> /etc/ntp.conf
sudo echo "server c.st1.ntp.br" >> /etc/ntp.conf
sudo echo "server d.st1.ntp.br" >> /etc/ntp.conf

sudo echo "disable monitor" >> /etc/ntp-restrict.conf

sudo killall ntpd
