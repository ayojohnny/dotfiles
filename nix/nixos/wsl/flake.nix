{
  description = "NixOS WSL baseline configuration.";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";
  };

  outputs = { self, nixpkgs, nixos-wsl, ... }: 
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations.nixos = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          nixos-wsl.nixosModules.default
          ./configuration.nix
        ];
      };
    };
}
