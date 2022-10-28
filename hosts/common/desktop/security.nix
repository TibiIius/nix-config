{ config, pkgs, ... }:
{
  security = {
    pam = {
      services = {
        gdm.enableGnomeKeyring = true;
      };
    };
  };
}
