{ lib, ... }:
{
  programs.waybar = import ./waybar.nix { inherit lib; };
}
