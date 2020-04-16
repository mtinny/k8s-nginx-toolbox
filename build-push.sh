#!/bin/bash

repo=mtinny/nginx
tag=${tag:-v0.1.0}

image="${repo}:${tag}"
latest="${repo}:latest"
docker build -t ${image} .
docker push ${image}

docker tag ${image} ${latest}
docker push ${latest}
