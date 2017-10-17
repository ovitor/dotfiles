#!/bin/sh
#
# Pacman
#
echo "pacman installs"
# Ask for the administrator password upfront.
#sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we have updated repositories.
pacman -Suy

# Install X and other tools
pacman -S --noconfirm \
  xorg-server \
  xorg-apps \
  xf86-video-intel \
  wpa_supplicant \
  sudo ntp \
  nvidia bumblebee # dell xps15z requirement

# Install WM and other tools
pacman -S --noconfirm \
  i3 i3blocks zsh \
  rxvt-unicode urxvt-perls \
  rofi feh compton awesome-terminal-fonts \

# Audio and Video
pacman -S  --noconfirm \
  alsa-utils \
  pulseaudio-alsa \
  mpv

# Miscellaneous 
pacman -S --noconfirm \
  htop aria2 httpie nmap \
  youtube-dl p7zip unrar tree \
  speedtest-cli keybase pwgen \
  git git-flow git-lfs \
  terraform ansible \
  docker docker-compose \
  openssh screen grep  \
  aspell aspell-pt aspell-en \
  vim pavucontrol maim \
  nmap \

# Other applications
pacman -S --noconfirm \
  firefox \
  transmission-cli \
  zathura zathura-pdf-mupdf

exit 0
