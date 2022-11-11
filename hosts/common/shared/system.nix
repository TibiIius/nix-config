{ config, pkgs, ... }:
{
  system = {
    autoUpgrade = {
      enable = true;
      flake = "github:TibiIius/nix-config";
      dates = "05:00";
    };
  };
}
