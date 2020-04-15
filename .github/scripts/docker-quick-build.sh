#!/bin/bash -ex

TAG_BUILD="${DOCKER_NAME:?}:${DOCKER_TAG:-${GITHUB_SHA:?}}"
TAG_LATEST="${DOCKER_NAME:?}:latest"

# Perform image build
docker build ${DOCKER_PATH:-.} \
   ${DOCKER_FILE:+--file ${DOCKER_FILE}} \
   --tag ${TAG_BUILD}

# Alias build as latest tag
docker tag ${TAG_BUILD} ${TAG_LATEST}

# Login to DockerHub
docker login --username ${DOCKER_USERNAME:?} --password-stdin ${DOCKER_SERVER:-} < <(echo ${DOCKER_PASSWORD:?})

# Push new tags
docker push ${TAG_BUILD}
docker push ${TAG_LATEST}