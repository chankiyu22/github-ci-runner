.PHONY: build
build:
	docker buildx build . --platform linux/amd64
