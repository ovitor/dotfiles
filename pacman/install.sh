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

# Install X/ and other tools
pacman -S --noconfirm \
  base-devel \
  xorg-server \
  xorg-apps xclip \
  mesa \
  xf86-input-synaptics \
  wpa_supplicant \
  sudo ntp \
  ttf-roboto ttf-ubuntu-font-family \
  ttf-fira-mono ttf-fira-code ttf-fira-code-mono \
  ttf-fira-sans awesome-terminal-fonts

# Install WM and other tools
pacman -S --noconfirm \
  i3-gaps sddm zsh \
  wmctrl \ # i3fancy-lock dependency
  alacritty \
  tmux \
  upower \
  udiskie udisks2 \
  acpi \
  exfat-utils xdg-user-dirs \
  rofi feh dunst \
  openvpn

# Audio and Video
pacman -S  --noconfirm \
  acpid alsa-utils \
  pulseaudio-alsa \
  mpv mpc mpd ncmpcpp

# Miscellaneous 
pacman -S --noconfirm \
  htop aria2 httpie nmap \
  youtube-dl p7zip unrar tree \
  speedtest-cli keybase \
  aspell aspell-pt aspell-en \
  pavucontrol maim flameshot \
  nmap ranger nnn unzip \
  gnupg tldr \

# Other applications
pacman -S --noconfirm \
  firefox \
  wireshark-qt \
  transmission-cli \
  zathura zathura-pdf-mupdf \
  cups cups-pdf

# Dev and Sysadmin applications
pacman -S --noconfirm \
  git git-lfs \
  terraform ansible pwgen \
  docker docker-compose \
  openssh screen grep freerdp \
  vim fzf \ 
  python-markdown poetry \
  net-tools \
  kubectl \
  rclone

exit 0
