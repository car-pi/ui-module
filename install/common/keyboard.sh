!/bin/bash
echo "RUNNING modules/ui-module/install/common/keyboard.sh"

sudo apt install wvkbd fcitx5 libfcitx5core-dev
cd $HOME
git clone https://github.com/horriblename/fcitx-virtualkeyboard-adapter.git
cd fcitx-virtualkeyboard-adapter
mkdir build
cd build
cmake ..
cmake --build .
sudo make install
sudo cp /usr/local/lib/fcitx5/libvirtualkeyboardadapter.so /usr/lib/aarch64-linux-gnu/fcitx5/

# Link config
mkdir -p "/home/$USER/.config/fcitx5/conf"
ln -s "/opt/car-pi/modules/ui-module/config/fcitx5/conf/virtualkeyboardadapter.conf" "/home/$USER/.config/fcitx5/conf/virtualkeyboardadapter.conf"

