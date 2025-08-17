{
  format = "{player_icon} {title} — {artist}";
  format-paused = "⏸ {title} — {artist}";
  format-stopped = "";
  max-length = 20;
  ellipsize = "end";

  player-icons = {
    default = "";
    spotify = "";
    mpv = "";
    vlc = "󰕼";
    firefox = "";
    chromium = "";
    google-chrome = "";
    brave = "󰿃";
    vivaldi = "󰖟";
  };

  status-icons = {
    playing = "▶";
    paused = "⏸";
    stopped = "■";
  };

  tooltip-format = "{player} — {title}\n{album}\n{artist}";
  interval = 1;

  on-click = "playerctl play-pause";
  on-click-right = "playerctl stop";
  on-scroll-up = "playerctl next";
  on-scroll-down = "playerctl previous";

  # Deja vacío para detectar también navegadores y extensiones
  ignored-players = [ ];
  scroll = true;
  scroll-speed = 0.4;
}
