#!/bin/bash

IMAGE_NAME="html-app"
CONTAINER_NAME="html-container"

echo "Stopping old container if exists..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Running new container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p 80:80 \
  $IMAGE_NAME

echo "Deployment completed successfully"
