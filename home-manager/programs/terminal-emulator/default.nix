{
  config,
  pkgs,
  ...
}:
{
  programs = {
    kitty = import ./kitty.nix;
    starship = import ./starship.nix;
    tmux = import ./tmux.nix { inherit pkgs; };
    zsh = import ./zsh.nix { inherit config pkgs; };
  };

  home.packages = with pkgs; [
    unrar
    unzip
    bat
    htop
  ];
}
