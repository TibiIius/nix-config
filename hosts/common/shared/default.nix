{ config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./btrfs.nix
    ./i18n.nix
    ./nix.nix
  ];

  time.timeZone = "Europe/Berlin";

  console = {
    font = "Lat2-Terminus20";
    keyMap = "us";
    useXkbConfig = false;
  };

  # Docker
  virtualisation.docker.enable = true;
}
