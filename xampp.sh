#!/usr/bin/env sh

version="5.6.31"
dockerImage="ehrlichandreas/docker-xampp:${version}-xenial-scm"

#mountPoint="$(git rev-parse --show-toplevel)"
#mountPoint="$( readlink -f ${mountPoint} )"
workDir="$( readlink -f $( pwd ) )"
userDir="/opt/lampp/htdocs"

#docker run --rm \
#    --net=host \
docker run --rm \
    --user "$(id -u):$(id -g)"  \
    -w "${userDir}" \
    -v "${workDir}:${userDir}" \
    -p 2222:22 \
    -p 8080:80 \
    -d \
    "${dockerImage}" $@
