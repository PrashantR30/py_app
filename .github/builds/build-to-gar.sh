#!/bin/bash
set -e

LATEST_TAG="$(git tag --list --sort=committerdate | tail -1)"
echo $LATEST_TAG



# if [ -z "${IMAGE_NAME}" ]; then
#   echo "ERROR: IMAGE_NAME environment variable is not set."
#   exit 1
# fi

# # Authenticate with Google Cloud
# echo "Authenticating with Google Cloud"
# gcloud auth configure-docker

# REGISTRY_URI="${GCP_REGISTRY}/${GCP_PROJECT_ID}/${IMAGE_NAME}"



# ECR_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"
# echo "ECR_URI = ${ECR_URI}"
# aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${ECR_URI}

# LATEST_TAG="$(git tag --list --sort=committerdate | tail -1)"

# if [ -z "$LATEST_TAG" ]; then
#   LATEST_TAG="test-$(date -u +"%Y-%m-%d_%H-%M")"
# fi

# TAG="${ECR_URI}/${IMAGE_NAME}:${LATEST_TAG}"
# echo "TAG = ${TAG}"

# if [ -z "$TEST" ]; then
#     echo "No value is set for TEST"
# elif [ "$TEST" -eq 0 ]; then
#     TAG="${TAG}"
#     docker build -f docker/Dockerfile-$CUDA_VERSION -t container:latest .
#     docker tag container:latest $TAG
#     docker image ls
#     docker push $TAG
# elif [ "$TEST" -eq 1 ]; then
#     TAG="${TAG}-test-$(date -u +"%Y-%m-%d_%H-%M")"
#     docker build -f docker/Dockerfile-$CUDA_VERSION -t container:latest .
#     docker tag container:latest $TAG
#     docker image ls
#     docker push $TAG
# else
#     echo "TEST has an unexpected value: $TEST"
# fi
