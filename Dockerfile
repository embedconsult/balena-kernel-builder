FROM ubuntu:jammy-20220531 AS balena-kernel-build
ARG OS_VERSION=6.5.2
ARG BALENA_MACHINE_NAME=beagleplay
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get update && \
    apt-get install -y \
    bison \
    build-essential \
    flex \
    libelf-dev \
    libssl-dev \
    bc \
    wget
