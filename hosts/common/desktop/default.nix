args@{ config, pkgs, wgIps, ... }:

{
  imports = [
    ./environment.nix
    ./pipewire.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./system.nix
    ./users.nix
    (import ./wireguard.nix
      (args
        // { wgIps = wgIps; })
    )
  ];

  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
    driSupport = true;
  };
}
