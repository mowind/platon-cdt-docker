# platon-cdt-docker

A Dockerfile for PlatON-CDT.

## Usage

### Build Image
``` shell
git clone --depth 1 https://github.com/mowind/platon-cdt-docker.git
cd platon-cdt-docker
docker build -t <tag> .
```

## Build Contract
1. Clone `platon-cdt-docker`

``` shell
git clone --depth 1 https://github.com/mowind/platon-cdt-docker.git
```

2. Copy `build-wasm.sh` to your project root directory

``` shell
cd platon-cdt-docker
cp build-wasm.sh <project root>
cd <project root>
./build-wasm.sh <contract file> <wasm file>
```
