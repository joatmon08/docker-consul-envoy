.PHONY: build build_and_push
DOCKER_REPOSITORY="joatmon08/consul-envoy"
CONSUL_VERSION=1.9.1
ENVOY_VERSION=1.16.0

build:
	docker build --build-arg CONSUL_VERSION=${CONSUL_VERSION} --build-arg ENVOY_VERSION=${ENVOY_VERSION} -t "${DOCKER_REPOSITORY}:v${CONSUL_VERSION}-v${ENVOY_VERSION}" .

build_and_push: build
	docker push "${DOCKER_REPOSITORY}:v${CONSUL_VERSION}-v${ENVOY_VERSION}"
