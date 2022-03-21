FROM telegraf:1.18
RUN sed -i "s/http:\/\/deb\.debian\.org/http:\/\/mirrors.163.com/" /etc/apt/sources.list
RUN sed -i "s/http:\/\/security\.debian\.org/http:\/\/mirrors.163.com/" /etc/apt/sources.list

RUN sed -i -e 's/$/ contrib non-free/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y libsnmp-dev snmp-mibs-downloader

ADD script /script
env SCRIPTPATH="/script"
env EUID=0
USER root
COPY entrypoint.sh /entrypoint.sh

