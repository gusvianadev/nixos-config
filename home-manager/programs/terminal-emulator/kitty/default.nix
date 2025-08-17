{
  enable = true;
  enableGitIntegration = true;

  settings = import ./settings.nix;
  keybindings = import ./keybindings.nix;

  shellIntegration = {
    enableZshIntegration = true;
  };
}
