.PHONY: build pull push

VERSION ?= latest
IMAGE_NAME ?= peterrosell/prometheus-json-exporter

release: pull build push

build:
	docker build -t $(IMAGE_NAME):$(VERSION) .

pull:
	docker pull $(IMAGE_NAME):latest

push:
	docker push $(IMAGE_NAME):$(VERSION)
