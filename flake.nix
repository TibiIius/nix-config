{
  description = "Flake file for NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
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
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, hyprland, ... }:
  {
    nixosConfigurations = {
      nixos-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          home-manager.nixosModules.home-manager
          hyprland.nixosModules.default 
          { programs.hyprland.enable = true; }
          ./configuration.nix 
          ./hosts/nixos-laptop/hardware-configuration.nix
        ];
        specialArgs = {
          unstable = import nixpkgs-unstable { system = "x86_64-linux"; config.allowUnfree = true; };
        };
      };
    };
  };
}
