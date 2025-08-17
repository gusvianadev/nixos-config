{
  imports = [
    ./activation-scripts
    ./env.nix
    ./hardware-configuration.nix
    ./packages
    ./configs
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ###### DANGER ZONE ######
  system.stateVersion = "24.05";
}
