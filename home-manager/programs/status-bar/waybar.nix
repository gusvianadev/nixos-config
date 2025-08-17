{ lib }:
{
  enable = true;
  settings = {
    main-bar = import ./main-bar;
  };
  style = lib.mkForce ./styles.css;
}
