{
  description = "NixOS WSL baseline configuration.";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";
    home-manager = {
     url="github:nix-community/home-manager/release-26.05";
     inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-wsl, home-manager, ... }: { 
      nixosConfigurations.wsl = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          nixos-wsl.nixosModules.default
          ./configuration.nix
          
          home-manager.nixosModules.home-manager {
            home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.developer = import ./home.nix;
            };
          }
        ];
      };
   };
}
