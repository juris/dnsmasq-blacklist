## Ads Domain Blacklist for Dnsmasq
If you have DD-WRT on your Wi-Fi router, here's how you can enable DNS-based ad blocking:

1. Go to _Administration_ > _Commands_, add the following and press _Save Startup_
```
wget -qO - http://zee.lv/dnsmasq-blacklist/blacklist.txt.gz | gunzip > /tmp/blacklist.txt
stopservice dnsmasq
startservice dnsmasq
```
2. Go to _Services_, add the following to _Additional Dnsmasq Options_ and press _Save_
```
addn-hosts=/tmp/blacklist.txt
```
3. Reboot your router via _Reboot Router_ button and enjoy less ads.

Blacklist is being updated on a weekly basis.
Feel free to use [blacklist-generator.sh](https://github.com/juris/dnsmasq-blacklist/blob/main/blacklist-generator.sh) to generate blacklist for any Dnsmasq setup.