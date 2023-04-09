#! /usr/bin/bash
if [ $(uname -i) = "aarch64" ]
then
	/usr/local/bin/docker-compose -f ./docker-compose.yml up -d
else
	/usr/local/bin/docker-compose -f ./docker-compose-arm64.yml up -d
