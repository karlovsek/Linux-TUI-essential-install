#!/bin/bash

# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

source nix-packages.sh

echo "If not add this to ~/.zshrc for ZSH or ~/.profile for bash"
echo "echo \"if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi\" >> ~/.zshrc"
