#!/bin/sh

docker run -it --rm --name circos -v "$PWD":/circosdata -w /usr/src/circos mrbiotech:circos-0.69-9 bash
