{ ps-pkgs, ... }:
  with ps-pkgs;
  { dependencies = [ prelude ]; }
