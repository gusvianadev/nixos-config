{
  config,
  pkgs,
  ...
}:
{
  programs = {
    kitty = import ./kitty;
    starship = import ./starship.nix;
    zsh = import ./zsh.nix { inherit config pkgs; };
  };

  home.packages = with pkgs; [
    unrar
    unzip
    bat
    htop
  ];
}
