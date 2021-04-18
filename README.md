# circos-alpine

## Description



## Installation

### Building the Docker container
1. `$ git clone https://github.com/mrbiotech/circos-alpine.git`
2. `$ cd circos-alpine`
3. `$ docker build -t mrbiotech/circos-alpine .`

### Running the new Docker container
The `start-circos-docker.sh` demonstrates running a new container based on the built image and running a terminal within it.

Briefly:
`$ docker run -it --rm --name circos -v "$PWD":/circosdata -w /circos mrbiotech:circos-alpine ash`

## Usage

- Ensure all your local configuration files are copied into the repo. They will be mounted withing the container at `/circosdata`.
- The actual circos binary file is located in `/circos/bin`.
- Currently, you need to run Circos from within the container's shell directly:
    - `$ cd /circos/bin`
    - `$ circos -conf /circosdata/NAME_OF_YOUR_CONFIG.conf -outputdir /circosdata/`

## TODOs

- [X] Use an Alpine Linux instance to build the Circos container to get it smaller than the current 1+ GB built container size
- [ ] Setup Dockerfile to automatically run `circos -f /circosdata/circos.conf` when initiated
  - Container just runs Circos, that's it!
- [ ] Write guidance on configuration of the `circos.conf` file standards:
  - Main conf file always called `circos.conf`
  - All subordinate configs referenced from `circos.conf` file
- [ ] Include demonstration files
  - Largely fusion examples from Archer
