#!/bin/bash
export TAG=$1
liveVersion=$(docker exec bg cat /var/live)
if [ $liveVersion == "blue" ]; then
	docker-compose -f ../$2/docker-compose.yml up -d green
else
	docker-compose -f ../$2/docker-compose.yml up -d blue
fi

