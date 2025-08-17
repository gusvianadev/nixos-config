{
  description = "Necronix - Necropheus NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      neovim-nightly-overlay,
      stylix,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      neovimNightly = neovim-nightly-overlay.packages.${system}.default;
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system neovimNightly;
          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
        };
        modules = [
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          ./nixos/configuration.nix
          (
            { config, pkgs, ... }:
            {
              stylix.enable = true;
              stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = { inherit neovimNightly; };
              home-manager.users.necropheus = import ./home-manager;

              environment.systemPackages = [
                home-manager.packages.${system}.home-manager
              ];
            }
          )
        ];
      };

      homeConfigurations.necropheus = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        extraSpecialArgs = { inherit neovimNightly; };
        modules = [
          stylix.homeModules.stylix
          ./home-manager
        ];
      };
    };
}
