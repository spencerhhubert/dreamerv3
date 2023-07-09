echo "Running container" $CONTAINER
docker stop dreamerv3.$CONTAINER
docker rm dreamerv3.$CONTAINER

docker run -d \
    -v /home/spencer/code/dreamerv3:/dreamerv3 \
    --gpus all \
    --name dreamerv3.$CONTAINER \
    -it dreamerv3.$IMAGE

