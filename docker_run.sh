#!/bin/bash
echo -e "Start docker transmission"

docker run  -i -t --rm \
            -p 9091:9091/tcp \
            -p 51413:51413/tcp \
            --name Transmission transmission
