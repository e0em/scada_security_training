#! /usr/bin/bash
if [ -f "/usr/local/bin/docker-compose" ] || [ -f "/usr/bin/docker-compose" ]
then
	compose_cmd="/usr/local/bin/docker-compose"
else
	compose_cmd="docker compose"
fi

$compose_cmd down

