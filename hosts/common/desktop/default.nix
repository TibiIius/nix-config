args@{ config, pkgs, wgIps, ... }:

{
  imports = [
    ./environment.nix
    ./pipewire.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./users.nix
    (import ./wireguard.nix
      (args
        // { wgIps = [ "192.168.71.2/32" "fdc9:3c6b:21c7:e6bd::2/128" ]; })
    )
  ];

  nixpkgs.config.allowUnfree = true;


  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    driSupport = true;
  };
}