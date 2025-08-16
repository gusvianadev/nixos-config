{
  services.gnome.gnome-keyring.enable = true;
  security.pam.services = {
    gdm.enableGnomeKeyring = true;
    gdm-password.enableGnomeKeyring = true;
  };
}
