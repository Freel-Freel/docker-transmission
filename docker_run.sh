#!/bin/bash
echo -e "Start docker transmission"
docker run  -i -t --rm -p 9091:9091 --name Transmission transmission /bin/sh
