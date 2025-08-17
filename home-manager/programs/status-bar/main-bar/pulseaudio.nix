{
  tooltip = false;
  on-click-right = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
  on-scroll-up = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%+";
  on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-";

  format = "{icon} {volume}%";
  format-muted = "󰝟 mute";
  format-icons = {
    headphone = "󰋋";
    headset = "󰋎";
    default = [
      "󰕿"
      "󰖀"
      "󰕾"
    ];
  };
}
