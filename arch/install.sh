#!/usr/bin/env bash
source ./.functions.sh

# set pacman config
sudo cp pacman.conf /etc/

# install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# install apps
yay -S --noconfirm --needed \
	flatpak \
	kdeconnect \
	picom \
	brave-bin \
	visual-studio-code-bin \
	intellij-idea-community-edition \
	nodejs \
	npm \
	maven \
	beekeeper-studio-bin \
	redshift-gtk-git \
	xdman-beta \
	flameshot \
	xcolor \
	qbittorrent \
	stremio \
	docker \
	docker-compose \
	discord \
	yt-dlp \
	alacritty \
	easyeffects \
	blueman \
	rofi \
	rofi-power-menu \
	ttf-twemoji \
	qt6ct \
	kvantum \
	ttf-fira-code \
	ttf-meslo-nerd-font-powerlevel10k \
	ttf-hack-nerd \
	nemo \
	lxappearance

# enable kdeconnect in firewall
sudo firewall-cmd --permanent --zone=public --add-service=kdeconnect
sudo firewall-cmd --reload

# bluetooth configuration
sudo systemctl enable bluetooth
cp policy-bluetooth ~/home/vini/.local/state/wireplumber/policy-bluetooth

# other configuration
sudo cp environment /etc/environment
cp -r .screenlayout ~/
cp -r .config ~/
cp -r .themes ~/
cp -r icons ~/.local/share
cp -r backgrounds ~/Pictures

# enable natural scroll
sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d

# black list Noveau Driver
# sudo cp blacklist-nouveau.conf /etc/modprobe.d/
# sudo cp 20-intel.conf /etc/X11/xorg.conf.d/
# sudo dracut -f