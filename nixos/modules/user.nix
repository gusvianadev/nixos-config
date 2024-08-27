{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.necropheus = {
      isNormalUser = true;
      description = "Necropheus";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = [ ];
    };
  };
}
