#!/bin/sh
#
# Pacaur
#
echo "pacaur installs"
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install tools

# Make sure we have pacaur installed
if ! which pacaur > /dev/null; then
  echo "pacaur not found, installing"
  pacman -S --noconfirm yajl expac
  mkdir -p /tmp/cower
  git clone https://aur.archlinux.org/cower.git /tmp/cower
  cd /tmp/cower/ && makepkg --skippgpcheck --install --needed
  mkdir -p /tmp/pacaur
  git clone https://aur.archlinux.org/pacaur.git /tmp/pacaur
  cd /tmp/cower/ && makepkg --skippgpcheck --install --needed
else
  echo "pacaur found, continue"
fi

# Updating repos
pacaur -Suy

# Installing tools
pacaur -S --noconfirm \
  xflux \
  telegram-desktop-bin \
  slack-desktop \
  whatsapp-desktop \
  i3lock-fancy-git \
  keeweb-desktop \
  bashmount \
  
