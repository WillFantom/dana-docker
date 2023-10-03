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

## Building

The Dockerfile expects a copy of *dana* to exist locally in the directory
`dana`. It expects at least `dnc`, `dana`, and `componenets/`. If you do not
have a local copy of *dana*, a compatible (ubuntu64) version can be downloaded
via a [Task](https://taskfile.dev):

```
$ DANA_VERSION=265 task pull
```

The container can then be built using the `build` task:

```
$ DANA_IMAGE_TAG=dana:dev task build
```

> Note: Check the given [`Taskfile`](./Taskfile.yml) for more

