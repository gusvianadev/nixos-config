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
    ./obs-studio
    ./panels
    ./stylix
    ./terminal-emulator
    ./text-editor
    ./window-manager
  ];

  home.packages =
    with pkgs;
    [
      gcc
      google-chrome
      gparted
      lsof
      obsidian
      pulseaudio
      spotify
      vesktop
      vlc
      wacomtablet
    ]
    ++ work;
}
