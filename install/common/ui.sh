#!/bin/bash
echo "RUNNING modules/ui-module/install/common/ui.sh"
# Install Weston (Wayland Compositor)
sudo apt install -y weston xwayland
# Install common apps
sudo apt install -y firefox

# Autostart weston
echo "export USER=$USER" > ~/.bash_profile
echo 'if [ "$(tty)" == "/dev/tty1" ]; then
  echo "weston"
  exec weston
fi

source ~/.bashrc' >> ~/.bash_profile

# Link config
mkdir -p "/home/$USER/.config"
ln -s "/opt/car-pi/modules/ui-module/config/weston/weston.ini" "/home/$USER/.config/weston.ini"
