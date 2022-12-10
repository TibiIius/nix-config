{ config, pkgs, pkgs-unstable, ... }:
{
  programs = {
    steam = {
      enable = true;
      package = pkgs-unstable.steam.override {
        extraLibraries = pkgs-unstable: with config.hardware.opengl;
          if pkgs-unstable.hostPlatform.is64bit
          then [ package ] ++ extraPackages
          else [ package32 ] ++ extraPackages32;
      };
    };
    gamemode.enable = true;
    evolution.enable = true;
    wireshark = {
      enable = true;
      package = pkgs-unstable.wireshark-qt;
    };
    gnupg.agent = {
      enable = true;
      pinentryFlavor = "gnome3";
    };
  };
}
