#!/bin/bash
echo "Running Audio Module"

# Build xkbcommon
cd /home/ubuntu/libxkbcommon
meson setup build \
  -Denable-x11=false \
  -Dxkb-config-root=/usr/share/X11/xkb \
  -Dx-locale-root=/usr/share/X11/locale
meson compile -C build
meson install -C build

# Build wlroots
cd /home/ubuntu/wlroots
meson setup build/
ninja -C build/
ninja -C build/ install

# Build Cage
cd /home/ubuntu/cage
meson setup build --buildtype=release
meson compile -C build
meson install -C build

bash
