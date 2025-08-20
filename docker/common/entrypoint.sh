#!/bin/bash
echo "Running UI Module"

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

# Build Cagebreak
cd /home/ubuntu/cagebreak
meson setup build -Dxwayland=false -Dman-pages=true --buildtype=release
ninja -C build

bash
