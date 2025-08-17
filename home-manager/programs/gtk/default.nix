{ pkgs, ... }:
{
  gtk = import ./gtk.nix { inherit pkgs; };

  home.packages = with pkgs; [
    papirus-icon-theme
  ];
}
