FROM ubuntu:22.04 AS tippacanoe-builder
RUN apt-get update \
  && apt-get -y install build-essential libsqlite3-dev zlib1g-dev git
ARG TIPPACANOE_VERSION=2.17.0

RUN git clone --depth 1 https://github.com/felt/tippecanoe.git --branch ${TIPPACANOE_VERSION} --single-branch /tmp/tippecanoe-src
WORKDIR /tmp/tippecanoe-src
RUN make && make install
CMD make test


FROM ubuntu:22.04
RUN apt-get update && apt-get -y install libsqlite3-dev zlib1g-dev && rm -rf /var/lib/apt/lists/*
COPY --from=tippacanoe-builder /tmp/tippecanoe-src/tippecanoe* /usr/local/bin/
WORKDIR /app

