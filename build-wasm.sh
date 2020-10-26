#!/usr/bin/env bash

ROOT=${PWD}

docker run -it --rm \
       -v $ROOT:/code \
       mowind/platon-cdt:latest \
       platon-cpp -I/code \
       /code/$1 -o /code/$2
