{
  separate-outputs = true;
  icon = true;

  format = "";
  rewrite = {
    "firefox|Chrom[eium]" = "";
    "(kitty|Alacritty)" = "";
    "code(-oss)?|VSCodium|code-url-handler" = "󰨞";
    "discord|Vesktop" = "";
    "Spotify" = "󰓇";
    "org.gnome.Nautilus|Thunar|Dolphin|nemo" = "";
    "obsidian" = "󰫎";
    "mpv|vlc" = "";
  };
}
