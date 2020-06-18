# VIEW MOUNT CACHE

The sources here produce a docker image that can be used to list the contents of a docker "mount cache".


# To Use

    $ docker run --rm -e CACHE_ID=cache-name --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock view-mount-cache:2020-06-18

    # On cache with specific user-id
    $ docker run --rm -e CACHE_UID=1000 -e CACHE_ID=cache-name --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock view-mount-cache:2020-06-18

    # With other cache flags (key=value format)
    $ docker run --rm -e ADDITIONAL_MOUNT_FLAGS=key=value --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock view-mount-cache:2020-06-18


# Notes

* When mounted with a UID, the uid appears to be critical in accessing the cache contents.  Make sure to specify the UID used with the cache when it was created.


# Developer Notes

* Use of `--no-cache` is critical on the docker build line - otherwise the first run output is cached and further runs skip the important run step.
