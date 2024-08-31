{ pkgs, ... }: {
  nixpkgs.config = { allowUnfree = true; };

  environment.systemPackages = with pkgs; [
    alacritty
    discord
    gcc
    git
    gnumake
    google-chrome
    home-manager
    libreoffice-qt # Change this if not using kde
    mpvpaper
    nil
    nixfmt
    nodejs
    obs-studio
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
    zoom-us
    zsh
    # Haskell
    haskellPackages.cabal-install
    haskellPackages.ghc
    haskellPackages.haskell-language-server
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome # installed for waybar icons
    (nerdfonts.override { fonts = [ "Hack" ]; })
  ];
}
