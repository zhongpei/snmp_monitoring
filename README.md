

# install

```
cp env .env
make
docker-compose -f grafana-telegraf-compose.yml up
```


### reset grafana password
```
docker exec -it <name of grafana container> grafana-cli admin reset-admin-password <fill in password

```


### add idrac dashborad

https://github.com/ilovepancakes95/idrac_snmp-grafana

install the following plugins:

* clock(https://grafana.com/grafana/plugins/grafana-clock-panel)
* statusmap(https://grafana.com/grafana/plugins/flant-statusmap-panel)


Telegram
net-snmp or snmp installed (snmptable and snmptranslate)






### HP MIB download link
* https://www.hpe.com/global/swpublishing/MTX-bff3e1f822e248398f713104c9
* https://downloads.hpe.com/pub/softlib2/software1/pubsw-linux/p1580676047/v164863/upd11.30mib.tar.gz

cpqida.mib
cpqhost.mib
cpqhlth.mib
cpqsm2.mib
cpqide.mib
cpqscsi.mib
cpqiscsi.mib
cpqnic.mib
cpqstsys.mib
cpqstdeq.mib
cpqfca.mib
cpqsinfo.mib
cpqstsys.mib


### Dell iDrac MIB download link
https://downloads.dell.com/FOLDER05075499M/1/Dell-OM-MIBS-910_A00.zip?uid=d6ce9226-aad9-4081-7338-a26446a6e850&fn=Dell-OM-MIBS-910_A00.zip

iDRAC-SMIv2.mib
