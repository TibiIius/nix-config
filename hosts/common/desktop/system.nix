{ config, pkgs, ... }:
{
  system = {
    autoUpgrade = {
      allowReboot = false;
      operation = "boot";
    };
  };
}
