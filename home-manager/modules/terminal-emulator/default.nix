{
  imports = [
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
  ];
  programs.alacritty = import ./alacritty.nix;
}
