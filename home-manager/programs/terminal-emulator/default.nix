{
  config,
  pkgs,
  lib,
  ...
}:
{
  programs = {
    alacritty = import ./alacritty.nix { inherit lib; };
    starship = import ./starship.nix;
    tmux = import ./tmux.nix { inherit pkgs; };
    zsh = import ./zsh.nix { inherit config pkgs; };
  };

  home.packages = with pkgs; [
    unrar
    unzip
    bat
    htop
  ];
}
