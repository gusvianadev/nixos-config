{
  imports = [ ./zsh.nix ./starship.nix ./modules/bundle.nix ];

  home = {
    username = "necropheus";
    homeDirectory = "/home/necropheus";
    stateVersion = "25.05";
  };
}
