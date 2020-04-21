#!/bin/bash
echo -e "Start background docker transmission"

docker run  -d --rm \
            -p 9091:9091/tcp \
            -p 51413:51413/tcp \
            --name Transmission transmission
