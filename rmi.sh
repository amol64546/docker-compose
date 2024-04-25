#!/bin/bash

# Get all image IDs except the dangling ones
IMAGE_IDS=$(docker images -q | grep -v '<none>')

# Loop through each image ID and remove it
for id in $IMAGE_IDS
do
    echo "Removing image with ID: $id"
    docker rmi -f $id
done
