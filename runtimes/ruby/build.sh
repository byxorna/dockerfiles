#!/bin/bash -ex
tag="${1:-byxorna/rubybase}"
docker build --rm -t "$tag" .
