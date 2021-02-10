# My personal rocker extensions

## Dev Helpers

Install packages useful for development with, e.g.:

```
rocker --mp-dev-helpers ubuntu:bionic
```

## Zsh

Install `zsh` with, e.g.:

```
rocker --mp-zsh ubuntu:bionic
```

## Set locale

Set 'en_US.UTF-8' locale with, e.g.:

```
rocker --mp-en-us-locale ubuntu:bionic
```

## Doceker-in-Docker (host daemon)

Mounts the host daemon's docker socket (`/var/run/docker.sock`) into the container and installs the docker CLI

```
rocker --mp-dind-host ubuntu:bionic
```

Interacting with the docker daemon will require `sudo` when using this extension.
This can be avoided by adding a `docker` group inside the container **matching the GID of the host's docker group**, and then adding the user to that group, with:

```bash
sudo groupadd -g <HOST_DOCKER_GID> docker
sudo usermod -aG docker <USER_NAME>
# A new session will need to be started for these changes to take effect
```

## Kitware CMake

Install an up-to-date version of CMake from Kitware's own repository with, e.g.:

```
rocker --mp-kitware-cmake ubuntu:bionic
```

