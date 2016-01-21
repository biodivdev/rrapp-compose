#!/bin/bash

docker-compose up -d proxy

docker-compose up -d taxadata
docker-compose up -d dwcservices
docker-compose up -d dwcbot
sleep 5
docker-compose up -d elasticsearch
sleep 15
docker-compose up -d biodividx
docker-compose up -d biodivui

