{ inputs, pkgs, ... }: {
  imports =
    [ ./hardware-configuration.nix ./packages.nix ./modules/bundle.nix ];

  nixpkgs.overlays = [ inputs.rust-overlay.overlays.default ];

  networking.hostName = "necropolis"; # Define your hostname.

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

  nix.settings.experimental-features =
    [ "nix-command" "flakes" ]; # Enabling flakes

  # KDE
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  environment.systemPackages = with pkgs; [ libreoffice-qt ];

  # EXTRA
  services.printing.enable = true;
  services.openssh.enable = true;

  system.stateVersion = "24.05"; # Don't change it bro
}
