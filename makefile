all:
	make -C telegraf
	[[ -e ./.env  ]] || cp ./env ./.env
