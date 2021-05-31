echo "UnMessing The Messing Things, Relax"
termux-setup-storage
apt update && apt upgrade -y

mkdir .termux
cp -rf $HOME/Termux-Desk/Dotfiles/termux/font.ttf $HOME/.termux
cp -rf $HOME/Termux-Desk/Dotfiles/termux/colors.properties $HOME/.termux
cp -rf $HOME/Termux-Desk/Dotfiles/termux/termux.properties $HOME/.termux

termux-reload-settings
exit