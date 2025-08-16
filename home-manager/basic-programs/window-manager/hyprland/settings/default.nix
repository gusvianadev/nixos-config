{
  "$mod" = "SUPER";
  "$terminal" = "alacritty";
  "$browser" = "google-chrome-stable";
  "$menu" = "wofi --show drun";

  general = import ./general.nix;
  bind = import ./key-bindings.nix;

  # TODO: Check if this is needed
  exec-once = [
    "waybar"
    "mako"
  ];

  monitor = [
    "HDMI-A-2, highres, 0x0, 1"
    "HDMI-A-1, preferred, 1920x0, 1"
  ];

  input = {
    follow_mouse = 2;
    repeat_delay = 300;
  };
}
