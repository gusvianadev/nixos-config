{
  imports =
    [ ./hardware-configuration.nix ./packages.nix ./modules/bundle.nix ];

  # Enabling flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Basic system configuration
  time.timeZone = "America/Argentina/Buenos_Aires"; # Set your time zone.
  i18n = {
    defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.
    extraLocaleSettings = {
      LC_ADDRESS = "es_AR.UTF-8";
      LC_IDENTIFICATION = "es_AR.UTF-8";
      LC_MEASUREMENT = "es_AR.UTF-8";
      LC_MONETARY = "es_AR.UTF-8";
      LC_NAME = "es_AR.UTF-8";
      LC_NUMERIC = "es_AR.UTF-8";
      LC_PAPER = "es_AR.UTF-8";
      LC_TELEPHONE = "es_AR.UTF-8";
      LC_TIME = "es_AR.UTF-8";
    };
  };

  # Extra
  services = {
    printing.enable = true;
    openssh.enable = true;
  };

  # Leave this here to enable dinamically linked binaries
  programs.nix-ld.enable = true;

  ###### DANGER ZONE ######
  system.stateVersion = "24.05"; # Don't change it bro
}
