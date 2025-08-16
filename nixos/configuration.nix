{
  imports = [
    ./env.nix
    ./hardware-configuration.nix
    ./packages
    ./settings
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ###### DANGER ZONE ######
  system.stateVersion = "24.05";
}
