{ pkgs, ... }: {
  nixpkgs.config = { allowUnfree = true; };

  environment.systemPackages = with pkgs; [
    alacritty
    bun
    discord
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
    spotify
    starship
    stylua
    vesktop
    vlc
    yarn-berry
    zoom-us
    zsh

    # Work
    slack
    openvpn
    figma-linux

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

    # Rust
    rust-bin.stable.latest.default
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome # installed for waybar icons
    nerd-fonts.hack
  ];
}
