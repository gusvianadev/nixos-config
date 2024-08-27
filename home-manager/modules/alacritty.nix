{
  programs.alacritty = {
    enable = true;
    settings = {
      window = { startup_mode = "Maximized"; };
      font = { size = 14; };
      colors = {
        primary = {
          background = "#10100E";
          foreground = "#C6C6C4";
        };
        normal = {
          black = "#10100E";
          red = "#C40233";
          green = "#009F6B";
          yellow = "#FFD700";
          blue = "#0087BD";
          magenta = "#9A4EAE";
          cyan = "#20B2AA";
          white = "#C6C6C4";
        };
        bright = {
          black = "#696969";
          red = "#FF2400";
          green = "#03C03C";
          yellow = "#FDFF00";
          blue = "#007FFF";
          magenta = "#FF1493";
          cyan = "#00CCCC";
          white = "#FFFAFA";
        };
      };
    };
  };
}