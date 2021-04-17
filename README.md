# Docker-Circos

## Description

## Installation

## Usage

## TODOs

- [ ] Setup Dockerfile to automatically run `circos -f /circosdata/circos.conf` when initiated
  - Container just runs Circos, that's it!
- [ ] Use an Alpine Linux instance to build the Circos container to get it smaller than the current 1+ GB built container size
- [ ] Write guidance on configuration of the `circos.conf` file standards:
  - Main conf file always called `circos.conf`
  - All subordinate configs referenced from `circos.conf` file
- [ ] Include demonstration files
  - Largely fusion examples from Archer