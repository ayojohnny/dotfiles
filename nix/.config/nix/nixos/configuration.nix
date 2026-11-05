{ config, lib, pkgs, ... }:

{
  # Enable native Docker daemon.
  virtualisation.docker.enable = true;


  imports = [];

  wsl = {
    enable = true;
    defaultUser = "developer";
  };

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
    allowed-users=["nixos" "developer"];
  };

  nixpkgs.config.allowUnfree = true;

  users.users.developer = {
    isNormalUser = true;
    extraGroups = [ "wheel"];
  };

  system.stateVersion = "26.05";

  programs.nix-ld.enable = true;
}
