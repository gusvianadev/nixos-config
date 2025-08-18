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
    ./panels
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
      gparted
    ]
    ++ work;
}
