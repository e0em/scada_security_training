#! /usr/bin/bash
if [ $(uname -i) = "aarch64" ]
then
	echo "arm64"
	docker build -t="e0em/ubuntu-scada:arm64" .
	/usr/local/bin/docker-compose -f ./docker-compose-arm64.yml up -d
else
	echo "x64"
	docker build -t="e0em/ubuntu-scada:x64" .
	/usr/local/bin/docker-compose -f ./docker-compose.yml up -d
fi
