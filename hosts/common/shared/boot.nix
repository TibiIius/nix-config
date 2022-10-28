{ config, pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        device = "nodev";
        efiSupport = true;
      };
      efi.canTouchEfiVariables = true;
    };
    plymouth = {
      enable = true;
      theme = "breeze";
    };
    initrd.systemd.enable = true; # Needed for Plymouth
  };
}
