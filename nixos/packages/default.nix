{ pkgs, neovimNightly, ... }:
let
  fonts = import ./fonts.nix { inherit pkgs; };
  secrets = import ./secrets.nix { inherit pkgs; };
  sound = import ./sound.nix { inherit pkgs; };
  wayland = import ./wayland.nix { inherit pkgs; };
in
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages =
    with pkgs;
    [
      git
      home-manager
      kitty
      neovim
      neovimNightly
      ripgrep
      xclip
    ]
    ++ secrets
    ++ sound
    ++ wayland;

  fonts.packages = fonts;
}
