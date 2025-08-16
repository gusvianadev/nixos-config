{ pkgs, ... }:
let
  work = import ./work.nix { inherit pkgs; };
in
{
  imports = [
    ./direnv.nix
    ./file-explorer
    ./git.nix
    ./notification-service
    ./status-bar
    ./terminal-emulator
    ./text-editor
    ./wallpaper-engine
    ./window-manager
  ];

  home.packages =
    with pkgs;
    [
      google-chrome
      obsidian
      spotify
      vesktop
      vlc
      wacomtablet
    ]
    ++ work;
}
