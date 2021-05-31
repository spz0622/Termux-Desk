echo "UnMessing The Messing Things, Relax"
termux-setup-storage
apt update && apt upgrade -y

mkdir .termux
cp $HOME/Termux-Desk/Dotfiles/termux/font.ttf $HOME/.termux
cp $HOME/Termux-Desk/Dotfiles/termux/colors.properties $HOME/.termux
cp $HOME/Termux-Desk/Dotfiles/termux/termux.properties $HOME/.termux

echo "
# Enter Your Username Here
# Hostname can Be Your Desk or Device Name..

export USER=Termuser
export HOSTNAME=Term-Desk


echo "How Are You Today, $USER"
lsd
echo ""

alias ls="lsd"
alias la="lsd -a"
alias rf="rm -rf"
alias extr="tar xf"
alias compr="tar -cvf"
alias i="apt install"
alias rem="apt remove"
alias sd="/sdcard"
alias home="$HOME"
alias used="ncdu"
alias n="nnn"
alias append="echo >>"
alias play="mpv"
" >> /data/data/com.termux/files/usr/etc/bash.bashrc
rm /data/data/com.termux/files/usr/etc/motd

termux-reload-settings
exit