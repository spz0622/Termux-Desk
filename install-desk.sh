echo "Installing Xfce4 In Termux"
echo "Made By Ayesumit"
sleep 2
echo "Just Sit Back And Relax.."
sleep 4

#installing All Required Materials.
echo "Installing x11-repo"
apt update && apt upgrade -y
apt install x11-repo -y
apt install git wget curl micro tar zip unzip -y

echo "Installing Xfce4 And Its Dependencies
Might Take A While..."
apt install xfce4 xfce4-terminal xfce4-taskmanager xfce4-whiskermenu-plugin xfce4-clipman-plugin gtk3 gtk2 -y
apt install xfce4* -y

echo "Installing System Apps"
apt install xarchiver neofetch htop leafpad lsd nnn bat ncdu cmatrix -y

echo "Installing Netsurf Browser, But it Doesn't Support Js"
apt install netsurf -y

echo "Installing Media Apps"
apt install mpv ristretto -y

echo "Installing Xorg Host, In Case If You Want To Run Linux Apps"
apt install xorg-xhost -y

echo "Installing Vnc Client.."
apt install tigervnc -y

echo ".............................."
echo ".  Applications Installed !  ."
echo ".............................."

sleep 2

echo "Creating Folders"
mkdir ~/Desktop
mkdir ~/Downloads
mkdir ~/Walpapers 
mkdir ~/Documents
mkdir ~/DCIM
mkdir ~/Android
mkdir ~/.icons
mkdir ~/.themes
mkdir ~/.vnc

echo "Creating Symlinks"
# Create Symlinks To Android Storage.
ln -s $HOME/storage/dcim/* $HOME/DCIM
ln -s $HOME/storage/shared/* $HOME/Android

echo "Setting Up Vnc Server"
cp -rf ~/Termux-Desk/Dotfiles/xstartup $HOME/.vnc
cp -rf ~/Termux-Desk/Dotfiles/startdesk $PREFIX/bin
cp -rf ~/Termux-Desk/Dotfiles/stopdesk $PREFIX/bin
chmod +x $PREFIX/bin/startdesk
chmod +x $PREFIX/bin/stopdesk
chmod +x ~/.vnc/xstartup

echo "Setting Up Dotfiles..."
cp -rf ~/Termux-Desk/Dotfiles/.config $HOME
cp -rf ~/Termux-Desk/Dotfiles/.vimrc $HOME
cp -rf ~/Termux-Desk/Dotfiles $HOME

echo "Setting Up Themes, Icons, Walpaper"
git clone https://github.com/ayesumit/Walpapers ~/Walpapers

cp -rf ~/Termux-Desk/Dotfiles/themes/theme.tar.gz $HOME/.themes
cd ~/.themes && tar xf theme.tar.gz

cp -rf ~/Termux-Desk/Dotfiles/themes/icon.tar.gz $HOME/.icons
cd ~/.icons && tar xf icon.tar.gz

cp -rf ~/Termux-Desk/Dotfiles/themes/fonts.tar.gz  $HOME/.fonts
cd ~/.fonts && tar xf fonts.tar.gz


bat ~/Termux-Desk/Dotfiles/experimental/greet.txt
cd $HOME

#terminal Fixes and colorizer
bash ~/Termux-Desk/termify.sh
