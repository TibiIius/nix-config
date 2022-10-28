{ config, pkgs, ... }:
{
  users = {
    groups.tim = {
      name = "tim";
      gid = 1000;
      members = [ "tim" ];
    };
    users.tim = {
      isNormalUser = true;
      uid = 1000;
      description = "Tim Brüggemann";
      home = "/home/tim";
      initialPassword = "123";
      group = "tim";
      shell = pkgs.zsh;
      extraGroups = [ "wheel" "networkmanager" ];
    };
    users.guest = {
      isNormalUser = true;
      uid = 1001;
      description = "Guest Account";
      home = "/home/guest";
      initialPassword = "123";
      shell = pkgs.zsh;
      extraGroups = [ "networkmanager" ];
    };
  };
}
