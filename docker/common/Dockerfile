FROM ubuntu:25.10

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /home/ubuntu

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        bash \
        cmake \
        build-essential \
        tzdata

RUN apt-get install -y --no-install-recommends \
    meson

RUN apt-get install -y --no-install-recommends \
    pkg-config

RUN apt-get install -y --no-install-recommends \
    libwayland-dev wayland-protocols

RUN apt-get install -y --no-install-recommends \
    libdrm-dev

RUN apt-get install -y --no-install-recommends \
    bison flex

RUN apt-get install -y --no-install-recommends \
    libxml2-dev

RUN apt-get install -y --no-install-recommends \
    libpixman-1-dev

RUN apt-get install -y --no-install-recommends \
    libegl-dev and libgles2-mesa-dev libvulkan-dev glslang-dev libdrm-dev libgbm-dev libinput-dev libudev-dev libseat-dev hwdata libdisplay-info-dev libliftoff-dev
RUN rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /home/ubuntu

ENTRYPOINT [ "/home/ubuntu/entrypoint.sh" ]

