{ config, pkgs, ... }:

{
  services = {
    printing.enable = true;
    xserver = {
      enable = true;
      displayManager = {
        gdm.enable = true;
        sddm.enable = false;
      };
      desktopManager = {
        gnome.enable = true;
        plasma5.enable = false;
      };
    };
  };
}
