{ neovimNightly, pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;
  };
  home.packages = with pkgs; [
    nil
    nixfmt
    stylua

    # TODO: Remove this once my research is done
    vscode
  ];
}
