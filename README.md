# My NixOS Config

```bash
git clone https://github.com/gusvianadev/nixos-config.git
mv nixos-config $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
sudo nixos-rebuild switch --flake .#nixos # first this one
home-manager switch --flake .#nixos # don't forget this one to have zsh and starship setups
```

Remember to run the last 2 commands each time you want to rebuild, not just nixos-rebuild
