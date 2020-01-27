#!/bin/bash

repo=mtinny/nginx
tag=${tag:-v0.0.4}

image="${repo}:${tag}"
latest="${repo}:latest"
docker build -t ${image} .
docker push ${image}

docker tag ${image} ${latest}
docker push ${latest}
