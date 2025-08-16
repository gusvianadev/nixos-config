{ pkgs, ... }:
{
  imports = [
    ./direnv.nix
    ./file-explorer
    ./git.nix
    ./notification-service
    ./status-bar
    ./terminal-emulator
    ./wallpaper-engine
    ./window-manager
  ];
  home.packages = with pkgs; [ wacomtablet ];
}
