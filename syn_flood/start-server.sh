#! /usr/bin/bash
echo $(uname -i)
if [ -f "/usr/local/bin/docker-compose" ] || [ -f "/usr/bin/docker-compose" ]
then
	compose_cmd="/usr/local/bin/docker-compose"
else
	compose_cmd="docker compose"
fi

if [ $(uname -i) = "aarch64" ]
then
	echo "arm64"
	$compose_cmd -f ./docker-compose-arm64.yml up -d
else
	echo "x64"
	$compose_cmd -f ./docker-compose.yml up -d
fi
