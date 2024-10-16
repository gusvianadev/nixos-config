{ pkgs, ... }: {
  nixpkgs.config = { allowUnfree = true; };

  environment.systemPackages = with pkgs; [
    alacritty
    discord
    vesktop
    git
    gnumake
    google-chrome
    home-manager
    libreoffice-qt # Change this if not using kde
    mpvpaper
    nil
    nixfmt
    nodejs_22
    obs-studio
    rust-bin.stable.latest.default
    spotify
    starship
    stylua
    vlc
    yarn-berry
    zoom-us
    zsh

    # Work
    slack
    openvpn

    # Tools
    kdePackages.kcalc
    obsidian

    # Terminal tools
    ripgrep
    unrar
    unzip
    xclip
    bat
    htop

    # C Development
    clang
    clang-tools
    cmake
    gdb
    valgrind

    # Window Manager
    dmenu

    # Wayland
    xwayland
    wl-clipboard
    xdg-desktop-portal-hyprland
    wofi
    kdePackages.kwallet
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    font-awesome # installed for waybar icons
    (nerdfonts.override { fonts = [ "Hack" ]; })
  ];
}
