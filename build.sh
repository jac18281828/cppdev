#!/usr/bin/env bash

VERSION=$(git rev-parse HEAD | cut -c 1-10)

PROJECT=jac18281828/cppdev

docker build . --progress=plain -t ${PROJECT}:${VERSION} --build-arg VERSION=${VERSION} && \
	docker run --rm -i -t ${PROJECT}:${VERSION}
