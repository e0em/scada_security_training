#! /usr/bin/bash
echo $(uname -i)
if [ $(uname -i) = "aarch64" ]
then
	echo "arm64"
	/usr/local/bin/docker-compose -f ./docker-compose-arm64.yml up -d
else
	echo "x64"
	/usr/local/bin/docker-compose -f ./docker-compose.yml up -d
fi
