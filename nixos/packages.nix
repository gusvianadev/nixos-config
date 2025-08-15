{ pkgs, lib, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Secrets
    libsecret
    seahorse

    # Utils
    wev
    grim
    slurp
    wl-clipboard

    # Sound
    playerctl

    bun
    discord
    slack
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
    vscode

    # Tools
    kdePackages.kcalc
    obsidian
    xournalpp

    # Terminals
    alacritty
    ghostty

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

    # Wayland
    xwayland
    wl-clipboard
    xdg-desktop-portal-hyprland
    wofi
    kdePackages.kwallet
    kdePackages.wayland-protocols

    # Rust
    rust-bin.stable.latest.default

    # Networking
    tcpdump

    logisim-evolution
    wacomtablet
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome # installed for waybar icons
    nerd-fonts.hack
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-unwrapped"
      "steam-run"
    ];

}
