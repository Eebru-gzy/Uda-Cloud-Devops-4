#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=eebru/project4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u eebru

#docker tag col bashox/udacity[:latest]
#docker commit col bashox/udacity[:latest]

# Step 3:
# Push image to a docker repository\
docker tag project4 eebru/udacity-project4
docker push eebru/udacity-project4
