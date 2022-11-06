{ config, pkgs, ... }:
{
  security = {
    pam = {
      services = {
        gdm = {
          enableGnomeKeyring = true;
          gnupg.enable = true;
        };
      };
    };
  };
}
