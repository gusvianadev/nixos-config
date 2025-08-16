{ neovimNightly, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = neovimNightly;
  };
  home.packages = with pkgs; [
    nil
    nixfmt
    stylua

    # TODO: Remove this once my research is done
    vscode
  ];
}
