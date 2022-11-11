{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./btrfs.nix
    ./i18n.nix
    ./system.nix
    ./nix.nix
    ./virtualisation.nix
  ];

  time.timeZone = "Europe/Berlin";

  console = {
    font = "Lat2-Terminus20";
    keyMap = "us";
    useXkbConfig = false;
  };

}
