FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    nasm gdb make libc6-dev-i386 gcc-multilib
