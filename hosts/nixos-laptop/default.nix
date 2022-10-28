args@{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../common/shared
    (import ../common/desktop
      (args
        // { wgIps = [ "192.168.71.2/32" "fdc9:3c6b:21c7:e6bd::2/128" ]; }
      )
    )
  ];

  networking.hostName = "nixos-laptop";

  # Enable touchpad
  services.xserver.libinput.enable = true;

  # Fingerprint auth
  security.pam.services = {
    login.fprintAuth = true;
    gdm.fprintAuth = true;
  };

  services = {
    fprintd.enable = true;
    touchegg.enable = true;
  };

  # Monitor tilt
  hardware.sensor.iio.enable = true;

  system.stateVersion = "22.05";
}
