{ pkgs, ... }:
{
  enable = true;

  # FIX: This is not being applied
  iconTheme = {
    name = "Papirus-Dark";
    package = pkgs.papirus-icon-theme;
  };
}
