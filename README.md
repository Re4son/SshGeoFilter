# SshGeoFilter



#### To install:  

*wget -O /usr/local/bin/sshgeofilter.sh https://github.com/Re4son/SshGeoFilter/raw/master/sshgeofilter.sh*  
*wget -O /usr/local/bin/UpdateGeoIpDB.sh https://github.com/Re4son/SshGeoFilter/raw/master/UpdateGeoIpDB.sh*

chmod 775 /usr/local/bin/sshgeofilter.sh
chmod 775 /usr/local/bin/UpdateGeoIpDB.sh
/usr/local/bin/UpdateGeoIpDB.sh

nano /usr/local/bin/sshgeofilter.sh \# Whitelist countries

sudo nano /etc/hosts.deny
---------------------------
sshd: ALL

sudo nano /etc/hosts.allow
---------------------------
sshd: ALL: aclexec /usr/local/bin/sshfilter.sh %a
