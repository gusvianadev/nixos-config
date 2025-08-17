{ config, pkgs, ... }:
{
  programs.hyprpanel = import ./hyprpanel.nix { inherit config; };

  home.packages = with pkgs; [
    ## Used for Tracking GPU Usage in your Dashboard (NVidia only)
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.gpustat
    ]))

    ## To record screen through the dashboard record shortcut
    wf-recorder

    ## To enable the eyedropper color picker with the default snapshot shortcut in the dashboard
    hyprpicker

    ## To enable hyprland's very own blue light filter
    hyprsunset

    ## To click resource/stat bars in the dashboard and open btop
    btop

    ## To enable matugen based color theming
    matugen

    ## To enable matugen based color theming and setting wallpapers
    swww
  ];
}
