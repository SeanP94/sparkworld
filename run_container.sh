#/bin/bash

# This is a temp to run from my Macbook so I dont have to type the chaotic CLI command, until I setup docker compose later.

docker run --rm  -v /Users/kraytor/Projects/data_platform/workdir:/usr/local/app -p 8889:8888 -d sparkworld 