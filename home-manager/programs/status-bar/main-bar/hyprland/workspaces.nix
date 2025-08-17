{
  all-outputs = true;
  persistent-workspaces = {
    "*" = [
      1
      2
      3
      4
      5
      6
      7
      8
      9
    ];
  };
  ignore-workspaces = [ "(special:)?chrome-sharing-indicator" ];
  sort-by-number = true;
  on-click = "activate";

  workspace-taskbar = {
    enable = true;
    format = "{icon}";
    icon-size = 16;
    icon-theme = [
      "Papirus-Dark"
      "Papirus"
    ];
  };

  format = "{icon} {windows}";
  format-icons = {
    active = "";
    default = "";
    empty = "·";
    urgent = "";
    special = "";
  };
}
