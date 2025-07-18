{
  description = "jonas basic flake";

  inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };
      catppuccin = {
        url = "github:catppuccin/nix";
        inputs.nixpkgs.follows = "nixpkgs";
      };
      hyprland = {
        url = "github:hyprwm/Hyprland";
        inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs{
    inherit system;
      config = {
        allowUnfree = true;
      };
    };
  in{
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem{
        specialArgs = { inherit inputs system ; };
        modules = [
          ./hosts/jonasbernard/configuration.nix
          inputs.home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}
