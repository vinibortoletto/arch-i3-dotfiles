#!/usr/bin/env bash

# set pacman config
sudo cp ./pacman.conf /etc/

# install yay
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

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
	lxappearance \
	github-cli \
	mpv \
	dunst

# enable kdeconnect in firewall
sudo firewall-cmd --permanent --zone=public --add-service=kdeconnect
sudo firewall-cmd --reload

# bluetooth configuration
sudo systemctl enable bluetooth
cp policy-bluetooth $HOME/.local/state/wireplumber

# other configuration

notify-send 'other configuration'

sudo cp environment /etc/environment
cp -r .screenlayout ~/
cp -r .config ~/
cp -r .themes ~/
cp -r icons ~/.local/share

mkdir ~/Pictures
cp -r backgrounds ~/Pictures

notify-send 'end other configuration'


# enable natural scroll
sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d

# black list Noveau Driver
# sudo cp blacklist-nouveau.conf /etc/modprobe.d/
# sudo cp 20-intel.conf /etc/X11/xorg.conf.d/
# sudo dracut -f

# git configuration
git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"
gh auth login