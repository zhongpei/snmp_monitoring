all:
	docker build -t "s/telegraf-snmp" .
	[[ -e ./etc/telegraf.conf  ]] || cp ./etc/telegraf.conf.template ./etc/telegraf.conf
