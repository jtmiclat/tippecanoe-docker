# Docker image for tippecanoe

## Usage

```
docker pull ghcr.io/jtmiclat/tippecanoe-docker:latest
docker run -it --rm -v $(pwd):/app ghcr.io/jtmiclat/tippecanoe-docker:latest tippecanoe -o output.mbtiles source.geojson
```

## Building the image

```
docker build -it ghcr.io/jtmiclat/tippecanoe-docker:latest .
```

## Explanation

This is a multistage docker build of [felt's fork of tippecanoe](https://github.com/felt/tippecanoe). 

It is built on top of `ubuntu:22.04` docker image.

Feel free to update or pass `TIPPACANOE_VERSION` arg to use a specific version of tippecanoe.
