echo "UnMessing The Messing Things, Relax"
termux-setup-storage
apt update && apt upgrade -y

mkdir .termux
cp $HOME/Termux-Desk/Dotfiles/termux/font.ttf $HOME/.termux
cp $HOME/Termux-Desk/Dotfiles/termux/colors.properties $HOME/.termux
cp $HOME/Termux-Desk/Dotfiles/termux/termux.properties $HOME/.termux


cat ~/Termux-Desk/Dotfiles/basher >> /data/data/com.termux/files/usr/etc/bash.bashrc
rm /data/data/com.termux/files/usr/etc/motd

termux-reload-settings
exit