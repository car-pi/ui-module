!/bin/bash
echo "RUNNING modules/ui-module/install/common/wpaperd.sh"

# install rinstall
cd $HOME
git clone https://github.com/danyspin97/rinstall.git
cd rinstall
cargo install --path .
./target/release/rinstall install -y

# install wpaperd
cd $HOME
git clone https://github.com/danyspin97/wpaperd
cd wpaperd
cargo install --path .
rinstall install --yes

# Link config
mkdir -p "/home/$USER/.config/wpaperd"
ln -s "/opt/car-pi/modules/ui-module/config/wpaperd/common/config.toml" "/home/$USER/.config/wpaperd/config.toml"
ln -s "/opt/car-pi/modules/ui-module/config/wpaperd/$CAR/bg" "/opt/car-pi/modules/ui-module/config/wpaperd/common/bg"
