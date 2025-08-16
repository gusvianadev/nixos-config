{ pkgs, ... }:
{
  # TODO: Refactor this folder
  imports = [
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
  ];
  programs.alacritty = import ./alacritty.nix;
  home.packages = with pkgs; [
    unrar
    unzip
    bat
    htop
  ];
}
