#!/bin/bash
apt update
apt upgrade -y
apt install unzip -u
apt install curl
curl ipinfo.io
apt install wget -y
#install nginx
apt install nginx -y
rm -r /usr/share/nginx/html
mkdir /usr/share/nginx/html
cd /usr/share/nginx/html
curl --output yacd-gh-pages.zip https://ovh.meongvpn.my.id/yacd-gh-pages.zip && unzip yacd-gh-pages.zip
chmod +x *
cd
cd /var/www/
rm -r html
mkdir /var/www/html
cd /var/www/html
curl --output yacd-gh-pages.zip https://ovh.meongvpn.my.id/yacd-gh-pages.zip && unzip yacd-gh-pages.zip
chmod +x *
cd
#install clash
mkdir /etc/clash
cd /etc/clash
curl --output config.yaml https://raw.githubusercontent.com/ProcopasTV/ProcopasV1-AutoSC/main/config.yaml
chmod +x /etc/clash/config.yaml
chmod +x config.yaml
cd
cd /etc/systemd/system
curl --output clash.service https://ovh.meongvpn.my.id/clash.service
chmod +x *
cd
cd /usr/local/bin
curl --output clash https://ovh.meongvpn.my.id/clash
chmod +x clash
cd
systemctl restart nginx
systemctl enable clash
systemctl restart clash
nano /etc/clash/config.yaml
systemctl restart clash
