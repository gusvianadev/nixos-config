{ pkgs, ... }:
let
  work = import ./work.nix { inherit pkgs; };
in
{
  imports = [
    ./direnv.nix
    ./file-explorer
    ./git.nix
    ./gtk
    ./notification-service
    ./panels
    # ./status-bar
    ./stylix
    ./terminal-emulator
    ./text-editor
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
