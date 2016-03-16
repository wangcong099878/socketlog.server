#!/bin/sh

DIR=$(cd "$(dirname "$0")"; pwd) 
source $DIR/config.sh

( docker ps -a |grep '$BASE_NAME' >/dev/null ) && ( docker start '$BASE_NAME' )

## start $BASE_NAME container
docker run --name=$BASE_NAME -d \
        -p 1229:1229 \
	-p 1116:1116 \
        $IMAGE_ID

#docker run -it --name mynode $(docker images | grep socket | awk 'NR<2{print $3}') /bin/bash
#docker rm mynode
