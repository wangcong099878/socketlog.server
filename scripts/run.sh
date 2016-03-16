#!/bin/sh

DIR=$(cd "$(dirname "$0")"; pwd) 
source $DIR/config.sh

( docker ps -a |grep '$BASE_NAME' >/dev/null ) && ( docker start '$BASE_NAME' )

## start $BASE_NAME container
docker run --name=$BASE_NAME -d \
        $IMAGE_ID


#docker run -it --name mynode $(docker images | grep nodejs5.8.0 | awk 'NR<2{print $3}')
#docker rm mynode
