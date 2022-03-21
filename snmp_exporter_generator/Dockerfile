FROM golang:latest

env GO111MODULE=on
env GOPROXY=https://proxy.golang.com.cn,direct

#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 04EE7237B7D453EC 648ACFD622F3D138
# Enable non-free
#RUN echo 'deb http://httpredir.debian.org/debian buster-backports main contrib non-free' >> /etc/apt/sources.list.d/debian-backports.list
RUN sed -i -e 's/$/ contrib non-free/g' /etc/apt/sources.list
# 163 mirrors
RUN sed -i "s/http:\/\/deb\.debian\.org/http:\/\/mirrors.163.com/" /etc/apt/sources.list
RUN sed -i "s/http:\/\/security\.debian\.org/http:\/\/mirrors.163.com/" /etc/apt/sources.list

RUN apt-get update && apt-get install -y libsnmp-dev snmp-mibs-downloader
RUN go install github.com/prometheus/snmp_exporter/generator@latest
#RUN go get github.com/prometheus/snmp_exporter/generator
#RUN cd /go/src/github.com/prometheus/snmp_exporter/generator \
#    go get -v . && \
#    go install

# Move the default generator file to the expected location
#RUN cp /go/src/github.com/prometheus/snmp_exporter/generator/generator.yml /opt/
COPY generator.yml /opt/
WORKDIR "/opt"

ENTRYPOINT ["/go/bin/generator"]

CMD ["generate"]
