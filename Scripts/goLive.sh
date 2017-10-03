#!/bin/bash
liveVersion=$(docker exec bg cat /var/live)
echo "Live version is $liveVersion"
if [ $liveVersion == "blue" ]; then
	docker exec bg switch green
else
	docker exec bg switch blue
fi

