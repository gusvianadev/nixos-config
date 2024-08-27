{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [ "python-2.7.18.8" "electron-25.9.0" ];
  };

  environment.systemPackages = with pkgs; [
    alacritty
    discord
    gcc
    git
    gnumake
    home-manager
    nil
    nixfmt
    nodejs
    ripgrep
    rust-bin.stable.latest.default
    spotify
    starship
    stylua
    unrar
    unzip
    vlc
    xclip
    yarn-berry
    zsh
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome # installed for waybar icons
    (nerdfonts.override { fonts = [ "Hack" ]; })
  ];
}
