# Docker image for tippecanoe

This is a multistage docker build of [felt's fork of tippecanoe](https://github.com/felt/tippecanoe). The fork is considered the actively maintained version of tippecanoe.

Currently, there is no easy way to access the functionality of tippecanoe without compiling it yourself as there is no pre built binaries released or actively maintained docker image. This repo hopes to provide a simple solution way of using github's docker registry.

## Usage

```
docker pull ghcr.io/jtmiclat/tippecanoe-docker:latest
docker run -it --rm -v $(pwd):/app ghcr.io/jtmiclat/tippecanoe-docker:latest tippecanoe -o output.mbtiles source.geojson
```

## Building the image
### Default
```
docker build -t ghcr.io/jtmiclat/tippecanoe-docker:latest .
```
### Specific version
Feel free to update dockefile or pass `TIPPACANOE_VERSION` arg to use a specific version of tippecanoe.

```
docker build -t ghcr.io/jtmiclat/tippecanoe-docker:latest . --build-arg TIPPACANOE_VERSION=2.22.0
```
