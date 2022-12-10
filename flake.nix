{
  description = "Flake file for NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";

    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.11";
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

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, newmpkg, flake-utils, tibiiius-pkgs, ... }:
    let
      inherit (flake-utils.lib) eachSystem system;
    in
    eachSystem
      [ system.x86_64-linux ]
      (
        system:
        let
          my-overlays = [
            tibiiius-pkgs.overlays.default
            (self: super: {
              newm = newmpkg.packages.${system}.newm;
              # libadwaita = tibiiius-pkgs.packages.${system}.libadwaita-without-adwaita;
            })
          ];

          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
            overlays = my-overlays;
          };

          pkgs-unstable = import nixpkgs-unstable {
            inherit system;
            config.allowUnfree = true;
            overlays = my-overlays;
          };

          mkNixSystem = hostname: nixpkgs.lib.nixosSystem {
            inherit pkgs system;
            modules = [
              ({ config, pkgs, ... }: { nix.registry.nixpkgs.flake = nixpkgs; })
              (./. + "/hosts/${hostname}")
            ];
            specialArgs = {
              inherit pkgs-unstable;
            };
          };
          mkNixHome = username: home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [ (./. + "/home/${username}") ];
            extraSpecialArgs = {
              inherit pkgs-unstable;
            };
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
          devShells.default = import ./shell.nix { inherit pkgs; };
        }
      );
}
