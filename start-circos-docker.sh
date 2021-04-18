#!/bin/sh

docker run -it --rm --name circos -v "$PWD":/circosdata -w /circos mrbiotech:circos-alpine ash
