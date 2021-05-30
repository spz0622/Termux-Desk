echo "Installing Xfce4 In Termux"
echo "Made By Ayesumit"
sleep 2

#installing All Required Materials.

echo "Installing x11-repo"
apt update && apt upgrade -y
apt install x11-repo -y
apt install git wget curl micro -y
echo "Installing Xfce4 And Its Dependencies
Might Take A While..."
apt install xfce4 xfce4-terminal xfce4-taskmanager xfce4-whiskermenu-plugin xfce4-clipman-plugin gtk3 gtk2 -y 

echo "Installing System Apps"
apt install xarchiver neofecth htop galculator leafpad feh lsd nnn cmatrix -y

echo "Installing Netsurf Browser, But it Doesn't Support Js"
apt install netsurf -y

echo "Installing Media Apps"
apt install mpv ristretto -y

echo "Installing Xorg Host, In Case If You Want To Run Linux Apps"
apt install xorg-xhost -y

echo ".............................."
echo "Applications Installed !"
echo ".............................."

echo "Creating Folders"
#Create Folder For Symlinks.
mkdir $HOME/Desktop
mkdir $HOME/Downloads
mkdir $HOME/Walpapers 
mkdir $HOME/Documents
mkdir $HOME/Pictures
mkdir $HOME/Videos

echo "Creating Symlinks"
# Create Symlinks To Android Storage.
ln -s $HOME/storage/DCIM $HOME/DCIM
ln -s $HOME/storage/shared $HOME/Android

echo "Setting Up Vnc Server"
cp -rf $HOME/Termux-Desk/Dotfiles/.vnc $HOME
cp -rf $HOME/Termux-Desk/Dotfiles/startdesk $PREFIX/bin
cp -rf $HOME/Termux-Desk/Dotfiles/stopdesk $PREFIX/bin

echo "Setting Up Desktop Environment Configs."
#Cloning My Walpapers Repository
git clone https://github.com/ayesumit/Walpapers* ~/Walpapers
#Cloning Themes from Source Repos
git clone theme
#Cloning Icons From Source Repos
git clone icon
#Setting Up Themes, Icons, Walpaper
cp -rf $HOME/Termux-Desk/Dotfiles/.config $HOME
#Setting Up Dotfiles
cp -rf $HOME/Termux-Desk/Dotfiles/.vimrc $HOME
cp -rf $HOME/Termux-Desk/Dotfiles $HOME

