# solisec

## Purpose

This Dockerfile builds an Ubuntu-based Docker container whose aim will be to security assess solidity smart contracts.

Tools installed:

- Mythril
- Slither
- Surya

## Prebuild image

You can pull the official image from the dockerhub registry using the following command:

```
docker pull nitr4x/solisec
```

## Build

To build the container, just use this command:

```bash
docker build -t solisec .
```

Docker will download the Ubuntu image and then execute the installation steps.

> Be patient, the process can be quite long the first time.

## Run

Once the build process is over, get and enjoy your new solidity security assessment platform!

```bash
docker run --rm -it -v CONTRACTS_FOLDER:/tmp/data --name solisec solisec
```

Explanations:

- We mount a shared folder to simplify the data exchange between the container and the host
- We delete the container when exited

Of course, it is up to you to adjust it to your taste or need.


Note: Don't forget to regularly pull this repository for updates.