{
  wayland.windowManager.hyprland = {
    enable = true;
    # xwayland.enable = true;

    settings = {
      # exec-once = [  ];
      "$mod" = "SUPER";

      env = [
        # "GDK_BACKEND,wayland"
        # "SDL_VIDEODRIVER,wayland"
        # "CLUTTER_BACKEND,wayland"
        # "QT_QPA_PLATFORM,wayland"
        # "XDG_CURRENT_DESKTOP,Hyprland"
        # "XDG_SESSION_TYPE,wayland"
        # "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_RUNTIME_DIR,/run/user/${toString builtins.getEnv "UID"}"
      ];

      bind = [
        # Window management
        "$mod, c, killactive,"

        # Move focus with mod + arrow keys
        "$mod, left,  movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up,    movefocus, u"
        "$mod, down,  movefocus, d"

        # Moving windows
        "$mod SHIFT, left,  swapwindow, l"
        "$mod SHIFT, right, swapwindow, r"
        "$mod SHIFT, up,    swapwindow, u"
        "$mod SHIFT, down,  swapwindow, d"

        # Window resizing                     X  Y
        "$mod CTRL, left,  resizeactive, -60 0"
        "$mod CTRL, right, resizeactive,  60 0"
        "$mod CTRL, up,    resizeactive,  0 -60"
        "$mod CTRL, down,  resizeactive,  0  60"

        # Scroll through existing workspaces with mod + scroll
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        # Volume and Media Control
        ", XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +2%"
        ", XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -2%"
        ", XF86AudioMute, exec, pactl set-sink-mute @DEFAULT_SINK@ toggle"
        ", XF86AudioMicMute, exec, pactl set-source-mute @DEFAULT_SOURCE@ toggle"

        # Apps
        "$mod, Return, exec, alacritty"
        "$mod, D, exec, wofi --show drun"
        "$mod, B, exec, google-chrome-stable"
        "$mod SHIFT, Q, exec, hyprctl dispatch exit"
        "$mod, P, exec, dmenu_run"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        builtins.concatLists (
          builtins.genList (
            i:
            let
              ws = i + 1;
            in
            [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          ) 9
        )
      );
    };
  };
}
