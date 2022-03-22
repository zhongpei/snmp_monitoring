#!/bin/bash

docker-compose -f grafana-telegraf-compose.yml up -d
docker-compose -f grafana-telegraf-compose.yml restart
