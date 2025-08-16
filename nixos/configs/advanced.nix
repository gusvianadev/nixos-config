{
  # Leave this here to enable dinamically linked binaries
  programs.nix-ld.enable = true;
  # hint Electron apps to use Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.fstrim.enable = true;
}
