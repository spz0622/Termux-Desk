echo "UnMessing The Messy Things, Relax"
apt update && apt upgrade -y

mkdir .termux
cp -rf ~/Termux-Desk/Dotfiles/termux/font.ttf $HOME/.termux
cp -rf ~/Termux-Desk/Dotfiles/termux/colors.properties $HOME/.termux
cp -rf ~/Termux-Desk/Dotfiles/termux/termux.properties $HOME/.termux

cat ~/Dotfiles/basher >> /data/data/com.termux/files/usr/etc/bash.bashrc
rm /data/data/com.termux/files/usr/etc/motd

termux-reload-settings