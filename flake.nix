{
  description = "Flake file for NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Used in shell.nix so people can keep using
    # `nix-shell` instead of `nix develop`
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... }:
  let
    mkNixSystem = hostname: system: additionalModules: nixpkgs.lib.nixosSystem {
      inherit system;
      modules = ([
        ( ./. + "/hosts/${hostname}")
      ] ++ additionalModules);
    };
  in
    {
      nixosConfigurations = {
        nixos-laptop = mkNixSystem "nixos-laptop" "x86_64-linux" [
          home-manager.nixosModules.home-manager
          hyprland.nixosModules.default
          { programs.hyprland.enable = true; }
        ];
      };
    };
}
