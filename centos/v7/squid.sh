# update

yum -y update

# install wget curl nano

yum -y install wget curl
yum -y install nano

# initialisasi var
OS=`uname -p`;
MYIP=`curl -s ifconfig.me`;
MYIP2="s/xxxxxxxxx/$MYIP/g";

# install squid
yum -y install squid
wget -O /etc/squid/squid.conf "https://raw.githubusercontent.com/jeevagit/myScripts/main/centos/v7/squid-centos.conf"
sed -i $MYIP2 /etc/squid/squid.conf;
systemctl restart squid
systemctl enable squid

# set time GMT +8
ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime

# Restart Squid
systemctl restart squid

# info
clear
echo "Setup By Sivaram-Durga"
