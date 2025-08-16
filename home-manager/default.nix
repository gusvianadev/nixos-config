{ pkgs, ... }:
{
  imports = [ ./basic-programs ];

  home = {
    username = "necropheus";
    homeDirectory = "/home/necropheus";
    stateVersion = "25.05";

    pointerCursor = import ./pointer-cursor.nix { inherit pkgs; };
  };
}
