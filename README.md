# DANA 🐳

Simple docker base image for the [dana language](https://projectdana.com/). The
image contains both the dana compiler and runtime (since this makes the most
sense with how dana is currently distributed). Also, the image uses Ubuntu as
the base to match testing environments.

> Note: Dana's current ubuntu builds only support x86, so this container will
> always use the amd64 ubuntu image as the base.

## Usage: Base Image

See [`example`](./example/) for how the base image can be used to package dana
applications in containers.

## Usage: General

The image can also be used as a build environment when coupled with mounts:

**Dana Compiler**

`docker run --rm -v "$(pwd)":/shared -w /shared ghcr.io/willfantom/dana:full dnc
MyApp.dn`

**Dana Runtime**

`docker run --rm -it -v "$(pwd)":/shared -w /shared ghcr.io/willfantom/dana:full dana
MyApp`

