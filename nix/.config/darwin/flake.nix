{
  description = "Nix Darwin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    darwin.url = "github:nix-darwin/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, darwin, nixpkgs, home-manager }:
  {
    darwinConfigurations.macbook = darwin.lib.darwinSystem {
      modules = [ 
        ./configuration.nix
        home-manager.darwinModules.home-manager 
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = {
            inherit inputs;
          };
          home-manager.users = import ./users.nix;
        }
      ];

      specialArgs = {
        inherit inputs;
        inherit self;
      };
    };
  };
}
