 #!/bin/bash

base_path=$PWD
echo "Yay instalation..."
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER yay
cd yay && makepkg -si

cd $base_path
echo "Installing base packages..."
yay -S \
  bash-completion

echo "VScode..."
yay -S visual-studio-code-bin -y

echo "Installing tools..."
yay -S \
  feh \
  acpi \
  ttf-font-awesome-4 \
  openssh \
  arandr \
  redshift \
  lm_sensors \
  python-pywal

echo "Some applications..."
yay -S \
  spotify

cp ./picom.conf ~/.conf/
exec --no-startup-id picom --config ~/.config/picom.conf
sed -i "\$abindsym \$mod+p exec \"wal -i /usr/share/backgrounds/\"" ~/.i3/config
sed -i "\$a#auto start red-shift\nexec --no-startup-id redshift-gtk &" ~/.i3/config

sed -i "\$afeh --bg-max --randomize /usr/share/backgrounds/* &" ~/.xinitrc

echo "Install anaconda 5..."
wget http://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
sh Anaconda3-5.0.0-Linux-x86_64.sh
rm Anaconda3-5.0.0-Linux-x86_64.sh