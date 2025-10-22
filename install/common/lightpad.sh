!/bin/bash
echo "RUNNING modules/ui-module/install/common/lightpad.sh"

mkdir $MODULE_ROOT/bin
wget https://github.com/libredeb/lightpad/releases/download/v0.1.0/lightpad_0.1.0-1_arm64.deb -O $MODULE_ROOT/bin/lightpad.deb
sudo apt install -y $MODULE_ROOT/bin/lightpad.deb

# Link config
mkdir -p "$HOME/.lightpad"
ln -s "/opt/car-pi/modules/ui-module/config/lightpad/config" "$HOME/.lightpad/config"
ln -s "/opt/car-pi/modules/ui-module/config/lightpad/blocklist" "$HOME/.lightpad/blocklist"

# Set wallpaper to match current
ln -s "$(realpath ~/.local/state/wpaperd/wallpapers)/$(ls ~/.local/state/wpaperd/wallpapers)" "$(realpath ~/.lightpad/background.jpg)"
