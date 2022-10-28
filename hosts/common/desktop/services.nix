{ config, pkgs, ... }:

{
  services = {
    printing.enable = true;
    xserver = {
      enable = true;
      displayManager = {
        gdm.enable = false;
        sddm.enable = true;
      };
      desktopManager = {
        gnome.enable = false;
        plasma5.enable = true;
      };
    };
  };
}
