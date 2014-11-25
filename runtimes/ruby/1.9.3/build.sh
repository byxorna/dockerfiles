#!/bin/bash -ex
tag="${1:-byxorna/ruby1.9.3}"
docker build --rm -t "$tag"
