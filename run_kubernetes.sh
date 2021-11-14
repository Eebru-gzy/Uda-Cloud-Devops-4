#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=eebru/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mypod --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
yum install socat -y
kubectl port-forward mypod 8000:80

