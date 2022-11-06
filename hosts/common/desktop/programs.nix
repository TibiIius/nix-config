{ config, pkgs, ... }:
{
  programs = {
    steam.enable = true;
    gamemode.enable = true;
    wireshark = {
      enable = true;
      package = pkgs.wireshark-qt;
    };
    gnupg.agent = {
      enable = true;
      pinentryFlavor = "gnome3";
    };
  };
}
