#!/bin/bash

# install nix
curl -L https://nixos.org/nix/install | sh

source nix-packages.sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# If not add this to ~/.zshrc for ZSH or ~/.profile for bash
# if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi" >> ~/.zshrc
