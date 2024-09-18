#!/bin/sh
echo '/log info "Loading CN ipv4 address list"
/ip firewall address-list remove [/ip firewall address-list find list=CN]
/ip firewall address-list' > update-geoip.rsc
cat GeoCN.txt | sed 's/^/:do { add address=/g' | sed 's/$/ list=CN } on-error={}/g' >> update-geoip.rsc
