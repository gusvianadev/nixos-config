{ pkgs, ... }:
{
  programs.neovim = {
    defaultEditor = true;
  };
  home.packages = with pkgs; [
    nil
    nixfmt
    stylua
    luajit
    luajitPackages.luarocks
  ];
}
