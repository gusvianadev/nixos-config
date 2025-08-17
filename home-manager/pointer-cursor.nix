{ pkgs }:
{
  package = pkgs.vanilla-dmz;
  name = "Vanilla-DMZ";
  size = 24;
  x11 = {
    enable = true;
    defaultCursor = true;
  };
}
