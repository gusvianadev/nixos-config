{
  modules-left = [ "hyprland/window" ];
  modules-center = [ "hyprland/workspaces" ];
  modules-right = [
    "pulseaudio"
    "network"
    "tray"
    "clock"
  ];

  "hyprland/window" = import ./hyprland/window.nix;
  "hyprland/workspaces" = import ./hyprland/workspaces.nix;
  pulseaudio = import ./pulseaudio.nix;
  network = import ./network.nix;
  tray = import ./tray.nix;
  clock = import ./clock.nix;
}
