#!/bin/bash -ex
tag="${1:-byxorna/ruby2.1}"
docker build --rm -t "$tag"
