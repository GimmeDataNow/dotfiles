#!/usr/bin/env bash

set -e

HOST=$(hostname)
DOTFILES_DIR="$HOME/dotfiles"

cd "$DOTFILES_DIR" || exit 1

echo "Hostname: $HOST"

# bashrc  bootstrap.sh  glow  helix  hypr  kitty  mpv  rofi  simple-scan  starship  waybar  yazi

# Remove existing Hyprland stowings
# stow -D hyprland-laptop 2>/dev/null || true
# stow -D hyprland-desktop 2>/dev/null || true
# stow -D hyprland-common 2>/dev/null || true

# Always stow common
# stow hyprland-common

# case "$HOST" in
#   "laptop-hostname")
#     echo "Stowing laptop-specific Hyprland config..."
#     stow hyprland-laptop
#     ;;
#   "desktop-hostname")
#     echo "Stowing desktop-specific Hyprland config..."
#     stow hyprland-desktop
#     ;;
#   *)
#     echo "Unknown hostname: $HOST. Skipping host-specific config."
#     ;;
# esac

stow --adopt bashrc glow helix hypr kitty mpv rofi simple-scan starship waybar yazi scripts
