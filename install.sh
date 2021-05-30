echo "Installing Xfce4 In Termux"
echo "Made By Ayesumit"
sleep 2
echo "Just Sit Back And Relax.."
sleep 2

chmod +x $HOME/Termux-Desk/*

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
apt install xarchiver neofetch htop leafpad lsd nnn cmatrix -y

#echo "Installing Netsurf Browser, But it Doesn't Support Js"
#apt install netsurf -y

echo "Installing Media Apps"
apt install mpv ristretto -y

echo "Installing Xorg Host, In Case If You Want To Run Linux Apps"
apt install xorg-xhost -y

echo "Installing Vnc Client.."
apt install tigervnc -y

echo ".............................."
echo "Applications Installed !"
echo ".............................."

echo "Creating Folders"
#Create Folder For Symlinks.
mkdir $HOME/Desktop
mkdir $HOME/Downloads
mkdir $HOME/Walpapers 
mkdir $HOME/Documents
mkdir $HOME/DCIM
mkdir $HOME/Android

echo "Creating Symlinks"
# Create Symlinks To Android Storage.
ln -s $HOME/storage/dcim/* $HOME/DCIM
ln -s $HOME/storage/shared/* $HOME/Android

echo "Setting Up Vnc Server"
cp -rf $HOME/Termux-Desk/Dotfiles/.vnc $HOME
cp -rf $HOME/Termux-Desk/Dotfiles/startdesk $PREFIX/bin
cp -rf $HOME/Termux-Desk/Dotfiles/stopdesk $PREFIX/bin
chmod +x $PREFIX/bin/startdesk
chmod +x $PREFIX/bin/stopdesk
chmod +x $HOME/.vnc/xstartup

echo "Setting Up Desktop Environment Configs."
#Setting Up Themes, Icons, Walpaper
mkdir $HOME/.icons
mkdir $HOME/.themes
#Cloning My Walpapers Repository
git clone https://github.com/ayesumit/Walpapers ~/Walpapers
#Cloning Themes from Source Repos
cp -rf $HOME/Termux-Desk/Dotfiles/themes.tar.gz $HOME/.themes
tar xf $HOME/.themes/themes.tar.gz $HOME/.themes
#Cloning Icons From Source Repos
cp -rf $HOME/Termux-Desk/Dotfiles/icons.tar.gz $HOME/.icons
tar xf $HOME/.icons/icons.tar.gz $HOME/.icons


echo "Setting Up Dotfiles..."
#Setting Up Dotfiles
cp -rf $HOME/Termux-Desk/Dotfiles/.config $HOME
cp -rf $HOME/Termux-Desk/Dotfiles/.vimrc $HOME
cp -rf $HOME/Termux-Desk/Dotfiles $HOME
