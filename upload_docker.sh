#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="ivanspenchev/udacity-devops"


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
# Idea for improvement
# this should probably grab all the images by $name
# iterrate and fetch the tag of the latest on in $imageTag
# compose $name:$imageTag
docker image tag ml-prediction-api:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
