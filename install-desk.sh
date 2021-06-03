echo "Installing Xfce4 In Termux"
echo "Made By Ayesumit"
sleep 2
echo "Just Sit Back And Relax.."
sleep 4

termux-setup-storage
sleep 2

#terminal Fixes and colorizer
bash ~/Termux-Desk/termify.sh

#installing All Required Materials.
echo "Installing x11-repo"
apt install x11-repo -y
apt update && apt upgrade -y
apt install git wget curl micro tar zip unzip -y

echo "Installing Xfce4 And Its Dependencies
Might Take A While..."
apt install xfce4 xfce4-terminal xfce4-taskmanager xfce4-whiskermenu-plugin xfce4-clipman-plugin gtk3 gtk2 -y
apt install xfce4* -y

echo "Installing System Apps"
apt install xarchiver neofetch htop leafpad lsd nnn bat ncdu cmatrix vim geany -y

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
mkdir ~/Music
mkdir ~/Android
mkdir ~/.icons
mkdir ~/.themes
mkdir ~/.fonts
mkdir ~/.vnc

echo "Creating Symlinks"
# Create Symlinks To Android Storage.
rm -rf ~/DCIM/* ~/Android/* ~/Music/*
ln -s ~/storage/dcim/* ~/DCIM
ln -s ~/storage/shared/* ~/Android
ln -s ~/storage/music/* ~/Music

echo "Setting Up Dotfiles..."
cp -rf ~/Termux-Desk/Dotfiles $HOME

echo "Setting Up Vnc Server"
cp -rf ~/Dotfiles/xstartup $HOME/.vnc
cp -rf ~/Dotfiles/startdesk $PREFIX/bin
cp -rf ~/Dotfiles/stopdesk $PREFIX/bin
chmod +x $PREFIX/bin/startdesk
chmod +x $PREFIX/bin/stopdesk
chmod +x ~/.vnc/xstartup

clear

echo "Giving Your Desk A Little EyeCandy And A Pinch Of Vanilla Essence...."
sleep 4
#configs
cp -rf ~/Dotfiles/themes/.config $HOME
#wallpapers
git clone https://github.com/ayesumit/Walpapers ~/Walpapers
#themes
cp -rf ~/Dotfiles/themes/theme.tar.gz $HOME/.themes
cd ~/.themes && tar xf theme.tar.gz
rm theme.tar.gz
#icons
cp -rf ~/Dotfiles/themes/icon.tar.gz $HOME/.icons
cd ~/.icons && tar xf icon.tar.gz
rm icon.tar.gz
#fonts
cp -rf ~/Dotfiles/themes/font.tar.gz  $HOME/.fonts
cd ~/.fonts && tar xf font.tar.gz
rm font.tar.gz

#guide
bat ~/Dotfiles/experimental/greet.txt
cd $HOME

