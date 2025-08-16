{ pkgs, lib, ... }:
let
  basics = import ./basics.nix { inherit pkgs; };
  dev = import ./dev.nix { inherit pkgs; };
  fonts = import ./fonts.nix { inherit pkgs; };
  general = import ./general.nix { inherit pkgs; };
  secrets = import ./secrets.nix { inherit pkgs; };
  sound = import ./sound.nix { inherit pkgs; };
  utils = import ./utils.nix { inherit pkgs; };
  wayland = import ./wayland.nix { inherit pkgs; };
  work = import ./work.nix { inherit pkgs; };
in
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages =
    with pkgs;
    [
      home-manager

      # TODO: move these to their respective shells
      nil
      nixfmt

      stylua

      nodejs_22
      yarn-berry

      # END
    ]
    ++ basics
    ++ dev
    ++ general
    ++ secrets
    ++ sound
    ++ utils
    ++ wayland
    ++ work;

  fonts.packages = fonts;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-unwrapped"
      "steam-run"
    ];

}
