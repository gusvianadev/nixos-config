{ pkgs, ... }:
let
  basics = import ./basics.nix { inherit pkgs; };
  fonts = import ./fonts.nix { inherit pkgs; };
  secrets = import ./secrets.nix { inherit pkgs; };
  sound = import ./sound.nix { inherit pkgs; };
  wayland = import ./wayland.nix { inherit pkgs; };
in
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [ home-manager ] ++ basics ++ secrets ++ sound ++ wayland;

  fonts.packages = fonts;
}
