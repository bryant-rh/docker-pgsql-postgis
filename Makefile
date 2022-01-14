PLATFORM := linux/amd64,linux/arm64
VERSION := 11.0-2.5

build:
	docker buildx build --push --progress plain --platform=${PLATFORM}	\
		--cache-from "type=local,src=/tmp/.buildx-cache" \
		--cache-to "type=local,dest=/tmp/.buildx-cache" \
		--file=Dockerfile \
		--tag=bryantrh/postgresql-postgis:${VERSION} \
		.
