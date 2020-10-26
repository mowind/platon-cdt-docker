FROM ubuntu:18.04 as builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake libz-dev libtinfo-dev tar wget git ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN git clone -b feature/wasm --depth 1 https://github.com/PlatONnetwork/PlatON-CDT.git
RUN cd PlatON-CDT && ./scripts/build.sh && cd build && make install
