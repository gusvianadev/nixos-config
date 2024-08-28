# My NixOS Config

```bash
git clone https://github.com/gusvianadev/nixos-config.git
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo cp /etc/nixos/hardware-configuration.nix ./nixos # You need your hardware configuration
sudo nixos-rebuild switch --flake .#nixos # First this one
home-manager switch --flake . # Then this one
```
