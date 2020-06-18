#!/bin/sh

./create.dockerfile.sh

# Use a dummy tag - we really just use build to get access to the cache.
DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain -f Dockerfile.run -t "view-mount-cache/output" .
