#!/bin/sh
# list flags of all connected stations
# the MFP flag (management frame protection) indicates a WPA3 compatible sta

cd /etc/hostapd || exit 1

for interface in $(ls *.cfg | sed -e 's/.cfg//')
do
    hostapd_cli -i $interface all_sta | egrep '^..:..:..:..:..:..$|^flags='
done | while read mac
do
    read flags
    echo "$mac    $flags"
done

exit 0