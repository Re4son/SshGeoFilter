#!/usr/bin/env bash

cd /tmp
wget -q https://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
if [ -f GeoIP.dat.gz ]
then
    gzip -d GeoIP.dat.gz
    rm -f /usr/share/GeoIP/GeoIP.dat
    mv -f GeoIP.dat /usr/share/GeoIP/GeoIP.dat
else
    echo "The GeoIP library could not be downloaded and updated"
fi
