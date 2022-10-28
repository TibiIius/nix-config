{
  description = "Flake file for NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    flake-utils.url = "github:numtide/flake-utils";

    # Used in shell.nix so people can keep using
    # `nix-shell` instead of `nix develop`
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };

    newmpkg = {
      url = "github:jbuchermn/newm";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Custom overlays
    tibiiius-pkgs = {
      url = "github:TibiIius/nix-overlays";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, newmpkg, flake-utils, tibiiius-pkgs, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [
            tibiiius-pkgs.overlays.default
            (self: super: {
              newm = newmpkg.packages.${system}.newm;
              libadwaita = tibiiius-pkgs.packages.${system}.libadwaita-without-adwaita;
            })
          ];
        };

        mkNixSystem = hostname: nixpkgs.lib.nixosSystem {
          inherit pkgs system;
          modules = [
            ({ config, pkgs, ... }: { nix.registry.nixpkgs.flake = nixpkgs; })
            (./. + "/hosts/${hostname}")
          ];
        };
        mkNixHome = username: home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ (./. + "/home/${username}") ];
        };
      in
      {
        packages = {
          nixosConfigurations = {
            nixos-laptop = mkNixSystem "nixos-laptop";
          };
          homeConfigurations = {
            tim = mkNixHome "tim";
            guest = mkNixHome "guest";
          };
        };
      }
    );
}
