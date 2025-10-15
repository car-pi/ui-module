#!/bin/bash
echo "RUNNING modules/ui-module/install/common/hyprland.sh"
# Install hyprland
cd $HOME
#git clone --depth=1 https://github.com/JaKooLit/Debian-Hyprland.git ~/Debian-Hyprland
#cd $HOME/Debian-Hyprland
#chmod +x install.sh
#./install.sh

# Autostart hyprland
echo "export USER=$USER" > ~/.bash_profile
echo 'if [ "$(tty)" == "/dev/tty1" ]; then
  exec Hyprland
fi

source ~/.bashrc' >> ~/.bash_profile

# Link config
mkdir -p "/home/$USER/.config/hypr"
ln -s "/opt/car-pi/modules/ui-module/config/hypr/hyprland.conf" "/home/$USER/.config/hypr/hyprland.conf"

# Hyprgrass
sudo apt install libglm-dev libpulse-dev
hyprpm add https://github.com/horriblename/hyprgrass
hyprpm enable hyprgrass
