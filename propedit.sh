echo "UnMessing The Messing Things, Relax"
termux-setup-storage

apt update && apt upgrade -y

cp -rf $HOME/Termux-Desk/Dotfiles/font.ttf $HOME/.termux
cp -rf $HOME/Termux-Desk/Dotfiles/colors.properties $HOME/.termux
cp -rf $HOME/Termux-Desk/Dotfiles/termux.properties $HOME/.termux

termux-reload-settings
exit