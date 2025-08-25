{ config, pkgs, ... }:
{
  programs.hyprpanel = import ./hyprpanel.nix { inherit config; };

  home.packages = with pkgs; [
    (pkgs.python3.withPackages (python-pkgs: [
      ## Used for Tracking GPU Usage in your Dashboard (NVidia only)
      python-pkgs.gpustat

      ## TODO: Move these to another file
      python-pkgs.pip
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
