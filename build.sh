#!/bin/sh

currentdir=$( cd "$( dirname "$0" )" && pwd );
version="5.6.31"

docker build \
    --network=host \
    --rm \
    -t "ehrlichandreas/docker-xampp:latest" \
    -t "ehrlichandreas/docker-xampp:${version}" \
    -t "ehrlichandreas/docker-xampp:${version}-xenial" \
    -t "ehrlichandreas/docker-xampp:${version}-xenial-scm" \
    "$currentdir/.";
