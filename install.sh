# Copy pacman config file
sudo cp pacman.conf /etc/
cp -r .config ~/

# Install YAY
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. && rm -rf yay

# Installing packages
yay -S --noconfirm \
	lxappearance \
	neovim \
	brave-bin \
	nemo \
	kvantum \

# Download Nordic theme
git clone https://github.com/EliverLara/Nordic.git
mkdir ~/.themes
mv Nordic ~/.themes
yay -S --noconfirm kvantum kvantum-theme-nordic-git
