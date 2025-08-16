{ pkgs, ... }:
{
  wayland.windowManager.hyprland = import ./hyprland;

  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
  ];
}
