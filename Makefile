DOCKER=docker
IMAGE=vidbina:develop
ENV=--env-file .env
SERVE=-P #--expose=4000 -p 127.0.0.1:8080:4000 #-P #-p 4000/tcp

image:
	${DOCKER} build . -t ${IMAGE}

shell:
	${DOCKER} run --rm -it -p 4000:4000 -v ${PWD}:/src -w /src ${IMAGE} /bin/bash

server:
	${DOCKER} run --rm -it -p 4000:4000 -v ${PWD}:/src -w /src ${ENV} ${SERVE} ${IMAGE} rake site:server

.PHONY: image shell server
