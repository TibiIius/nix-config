{ config, pkgs, ... }:
{
  system = {
    autoUpgrade = {
      allowReboot = false;
      operation = "boot";
      dates = "20:00";
      persistent = true;
    };
  };
}
